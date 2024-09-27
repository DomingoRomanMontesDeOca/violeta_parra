ton = selected("Pitch")
#sn = selected("Sound")
tg = selected("TextGrid")
tg$ = selected$("TextGrid")


composicion$ = left$(tg$,3)
caracter$ = mid$(tg$,4,1)

select tg


ene_intervalos_tier_2 = Get number of intervals: 2


writeInfoLine: "composicion,caracter,estrofa,verso,dist_porc,st_pendiente,pendiente"





for i to ene_intervalos_tier_2

	select tg

	verso_silabas$ = Get label of interval: 2, i

	verso$ = left$(verso_silabas$, 1)

	if verso$ == "8"

		inicio_verso = Get start time of interval: 2, i
		final_verso = Get end time of interval: 2, i
		duracion_verso = final_verso - inicio_verso

		intervalo_estrofa = Get low interval at time: 1, inicio_verso

		estrofa$ = Get label of interval: 1, intervalo_estrofa


		index_elevacion_verso_8 = Get low index from time: 4, final_verso

		tiempo_inicio_elevacion_v_8 = Get time of point: 4, index_elevacion_verso_8

		index_final_del_tonema = Get low index from time: 3, final_verso

		tiempo_final_del_tonema = Get time of point: 3, index_final_del_tonema

		dist_pos = final_verso - tiempo_inicio_elevacion_v_8

		porc_pos = dist_pos*100/duracion_verso

# valor de la pendiente de la inflexión

		select ton

# valores f0 de la pendiente

		ini_inflex = Get value at time: tiempo_inicio_elevacion_v_8, "Hertz", "linear"

		fin_inflex = Get value at time: tiempo_final_del_tonema, "Hertz", "linear"

		st_pendiente = 12*log2(fin_inflex/ini_inflex)

# duración de la pendiente

		dur_pendiente = tiempo_final_del_tonema - tiempo_inicio_elevacion_v_8

		pendiente_8 = st_pendiente/dur_pendiente



# graficar

		Erase all

		Black

		Line width: 1

		Select inner viewport: 0.5, 6.5, 0.5, 2.5

		select ton

		Blue

		Speckle: inicio_verso, final_verso, 0, 500, "no"

		Draw inner box

		Marks right every: 1, 100, "yes", "yes", "yes"

		Text right: "yes", "Hz"

		One mark bottom: tiempo_inicio_elevacion_v_8, "no", "yes", "yes", ""

		titulo$ = "Composición " + composicion$ + ", estrofa " + estrofa$

		Text top: "no", titulo$

		Paint circle (mm): "red", tiempo_inicio_elevacion_v_8, ini_inflex, 2.5

		#Paint circle (mm): "white", tiempo_final_del_tonema, fin_inflex, 3.5

		Paint circle (mm): "red", tiempo_final_del_tonema, fin_inflex, 2.5

		Dashed line

		Line width: 2

		Red

		Arrow size: 2

		Draw arrow: tiempo_inicio_elevacion_v_8, ini_inflex, tiempo_final_del_tonema - 0.01, fin_inflex

		pauseScript: "==="

		
		appendInfoLine: composicion$,",",caracter$,",",estrofa$,",",verso$,",",porc_pos,",",st_pendiente,",",pendiente_8


	endif

endfor
