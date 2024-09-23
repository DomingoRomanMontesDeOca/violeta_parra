sn = selected("Sound")
sn$ = selected$("Sound")
tono = selected("Pitch")
tg = selected("TextGrid")
composicion$ = left$(sn$,3)
caracter$ = mid$(sn$,4,1)

writeInfoLine: "===="





select tg

tiempo_total_sin_silencios = Get total duration of intervals where: 1, "is not equal to", ""

prom_tiempo_por_estrofa = tiempo_total_sin_silencios/5

appendInfoLine: "Tiempo total (sin pausas) y promedio por estrofa"

appendInfoLine: fixed$(tiempo_total_sin_silencios,3), tab$, fixed$(prom_tiempo_por_estrofa,3)




n_intervalos_tier_1 = Get number of intervals: 1

ini_intervalo_2_tier_1 = Get start time of interval: 1, 2

fin_intervalo_10_tier_1 = Get end time of interval: 1, 10

tiempo_total_con_pausas = fin_intervalo_10_tier_1 - ini_intervalo_2_tier_1


velocidad_estrofa = 5 / tiempo_total_con_pausas

velocidad_verso = 50 /  tiempo_total_con_pausas

if n_intervalos_tier_1 <> 11

   appendInfoLine: "Revisar segmentación en tier 1"

endif


writeInfoLine: "composicion,caracter,estrofa,duracion,promediof0,maxf0,minf0,semitonos"

for i to n_intervalos_tier_1

   select tg

   estrofa$ = Get label of interval: 1, i

   if estrofa$ <> ""

       inicio_estrofa = Get start time of interval: 1, i

       final_estrofa = Get end time of interval: 1, i

       duracion = final_estrofa - inicio_estrofa

       select tono

       x_f0 = Get mean: inicio_estrofa, final_estrofa, "Hertz"

       max_f0 =  Get maximum: inicio_estrofa, final_estrofa, "Hertz", "parabolic"

       min_f0 = Get minimum: inicio_estrofa, final_estrofa, "Hertz", "parabolic"

       st = 12*log2(max_f0/min_f0)

       appendInfoLine: composicion$,",",caracter$,",",estrofa$,",",duracion,",",x_f0,",",max_f0,",",min_f0,",",st

   endif

endfor