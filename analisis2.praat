sn = selected("Sound")
sn$ = selected$("Sound")
tono = selected("Pitch")
tg = selected("TextGrid")

select tono
stono_suavizado = Smooth: 10
pp = To PointProcess

writeInfoLine: "composicion,caracter,estrofa,verso,acentos,duracion,xf0,stMm,stT"



# Datos obtenidos del nombre de la composicion
composicion$ = left$(sn$, 3)
caracter$ = right$(sn$, 1)

#			tabla_decimas = Create Table with column names: "tabla_decimas", 50, { "composicion", "caracter", "estrofa", "verso", "acentos", "duracion", "xf0", "stMn", "stTon" }


select tg
n_intervalos_tier_1 = Get number of intervals: 1

# Selección de estrofas

for i to n_intervalos_tier_1

	select tg

	estrofa$ = Get label of interval: 1, i

	if estrofa$ <> ""

		inicio_estrofa = Get start time of interval: 1, i

		final_estrofa = Get end time of interval: 1, i

		fragmento = Extract part: inicio_estrofa, final_estrofa, "yes"

		n_versos = Get number of intervals: 2

		

		for i_versos to n_versos

			select fragmento

			ini_verso = Get start time of interval: 2, i_versos

			fin_verso = Get end time of interval: 2, i_versos

			duracion_verso = fin_verso - ini_verso

			etiqueta_verso$ = Get label of interval: 2, i_versos

			if etiqueta_verso$ <> ""

				largo_etiqueta_verso = length(etiqueta_verso$)

				if largo_etiqueta_verso == 3

					ene_de_verso$ = left$(etiqueta_verso$, 1)

					ene_acentos$ = mid$(etiqueta_verso$, 3,1)

				elsif largo_etiqueta_verso == 4

					ene_de_verso$ = left$(etiqueta_verso$, 2)

					ene_acentos$ = mid$(etiqueta_verso$, 4,1)

				endif

			subfragmento = Extract part: ini_verso, fin_verso, "yes"

			tiempo_tonema_ini = Get time of point: 3, 1

			tiempo_tonema_fin = Get time of point: 3, 2

		

			select tono

			xf0 = Get mean: ini_verso, fin_verso, "Hertz"
			min = Get minimum: ini_verso, fin_verso, "Hertz", "parabolic"
			max = Get maximum: ini_verso, fin_verso, "Hertz", "parabolic"
			t_min = Get time of minimum: ini_verso, fin_verso, "Hertz", "parabolic"
			t_max = Get time of maximum: ini_verso, fin_verso, "Hertz", "parabolic"
			ds = Get standard deviation: ini_verso, fin_verso, "Hertz"
			dist_Hz = max-min
			st_M_m = 12*log2(max/min)

			f0_tonema_ini = Get value at time: tiempo_tonema_ini, "Hertz", "linear"
			f0_tonema_fin = Get value at time: tiempo_tonema_fin, "Hertz", "linear"
			st_tonema = 12*log2(f0_tonema_fin/f0_tonema_ini)




###  Pendiente

			select pp

			inicio_f0_verso = Get high index: ini_verso

			f0_inicio_verso = Get time from index: inicio_f0_verso
   
			f0_final_verso = f0_tonema_fin

			st_f0_ini_fin_verso = 12*log2(f0_final_verso/f0_inicio_verso)

			distancia_puntos = (tiempo_tonema_fin - f0_inicio_verso)

			pend_st_verso = st_f0_ini_fin_verso/(distancia_puntos)


			appendInfoLine: composicion$,",",caracter$,",",estrofa$,",",ene_de_verso$,",",ene_acentos$,",",duracion_verso,",",xf0,",",st_M_m,",",st_tonema,",",pend_st_verso
			endif

		endfor

		select subfragmento
		Remove

	endif

# falta borrar los objetos por motivos de elegancia

endfor
