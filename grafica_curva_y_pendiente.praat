# Crea imagen de ejemplo pitch y pendientes de los versos
# de una composición
# Requiere el TextGrid y el Pitch editado.
# Grafica el pitch suavizado en gris
# Muestra la pendiente de cada verso

writeInfoLine: "MMMMMM"


form estrofa
	word estrofa 1
	boolean curva 1
	boolean pendiente 1
endform


writeInfoLine: "...."

Line width: 1

tg = selected("TextGrid")

tono2 = selected("Pitch")



appendInfoLine: estrofa$


select tono2

tono = Smooth: 10

pp = To PointProcess



select tg


ene_estrofas = Get number of intervals: 1

Erase all

Select inner viewport: 0.5, 10.5, 0.5, 2.5

for i_estrofas to ene_estrofas

	select tg

	etiqueta_estrofa$ = Get label of interval: 1, i_estrofas

	if etiqueta_estrofa$ <> ""

		estrof$ = left$(etiqueta_estrofa$,1)

		if estrof$ == estrofa$

			if curva == 1

				select tg

				ini_estrofa = Get start time of interval: 1, i_estrofas

				fin_estrofa = Get end time of interval: 1, i_estrofas

				Select inner viewport: 0.5, 10.5, 0.5, 2.5

				select tono

				Blue

				Speckle: ini_estrofa, fin_estrofa, 100, 500, "no"

				Draw inner box

			endif



			## Grafica la pendiente

			if pendiente == 1

				select tg

				ini_estrofa = Get start time of interval: 1, i_estrofas

				fin_estrofa = Get end time of interval: 1, i_estrofas

				fragmento = Extract part: ini_estrofa, fin_estrofa, "yes"

				ene_versos = Get number of intervals: 2

					for i_versos to ene_versos + 1
			
						select tg

						etiqueta_verso$ = Get label of interval: 2, i_versos

						if etiqueta_verso$ <> ""

							tiempo_ini_verso = Get start time of interval: 2, i_versos

							tiempo_fin_verso = Get end time of interval: 2, i_versos

							select pp

							index_primer_punto = Get high index: tiempo_ini_verso

							tiempo_primer_punto = Get time from index: index_primer_punto

							index_ultimo_punto = Get low index: tiempo_fin_verso

							tiempo_final_punto = Get time from index: index_ultimo_punto

							select tono

							f0_i = Get value at time: tiempo_primer_punto, "Hertz", "linear"

							f0_f = Get value at time: tiempo_final_punto, "Hertz", "linear"

							Green

							Line width: 2

							Arrow size: 1.5

							Draw arrow: tiempo_primer_punto, f0_i, tiempo_final_punto-0.06, f0_f

						endif

					endfor

					Line width: 1
					
					Draw inner box

			# límites de versos

				for i_limite_de_verso to ene_versos

					select fragmento

					final_verso = Get end time of interval: 2, i_limite_de_verso

					Black

					Draw line: final_verso, 100, final_verso, 500

				endfor


					Marks right every: 1, 100, "yes", "yes", "yes"
			endif	

		endif

	endif

endfor
	
select tono
plus pp
plus fragmento
Remove

Select outer viewport: 0.5, 10.85, 0.4, 2.6
