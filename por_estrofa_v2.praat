# Métrica y poética
# Analisis de décimas recitadas
# 2024, julio
# Domingo Román y José Figueroa
# USACH
# seleccionar todo por estrofa
# Solo datos por estrofa

writeInfoLine: "==="

tg = selected("TextGrid")

tg$ =  selected$("TextGrid") 

composicion$ = left$(tg$,3)

caracter$ = right$(tg$,1)


select tg

n_interv_1 = Get number of intervals: 1

n_intervalos_plenos = Count intervals where: 1, "is not equal to", ""


tabla_estrofa = Create Table with column names: "table", n_intervalos_plenos, { "composicion", "estrofa", "caracter", "duracion", "velocidad", "tiempoPausas", "enePausas", "PausasPorTiempo", "tiempoEnunciados", "eneEnunciados", "EnunciadosPorTiempo" }


	contador_estrofas = 0

for i to n_interv_1

	select tg

	estrofa$ = Get label of interval: 1, i

	caracter_estrofa$ = mid$(estrofa$, 2,1)

	numero_estrofa$ = left$(estrofa$, 1)

	if estrofa$ <> ""
		
		contador_estrofas = contador_estrofas + 1

		select tg

		ini = Get start time of interval: 1, i

		fin =  Get end time of interval: 1, i

		duracion_estrofa = fin-ini

		velocidad_estrofa = duracion_estrofa/10

		tg_estrofa = Extract part: ini, fin, "no"

		tiempo_pausas_intra_estrofa = Get total duration of intervals where: 2, "is equal to", ""

		ene_pausas = Count intervals where: 2, "is equal to", ""

		pausas_por_tiempo = tiempo_pausas_intra_estrofa/ene_pausas

		tiempo_enunciados = Get total duration of intervals where: 2, "is not equal to", ""

		ene_enunciados = Count intervals where: 2, "is not equal to", ""

		tiempo_por_enunciado = tiempo_enunciados/ene_enunciados

		select tabla_estrofa

	
		Set string value: contador_estrofas, "composicion", composicion$

		Set string value: contador_estrofas, "estrofa", numero_estrofa$

		Set string value: contador_estrofas, "caracter", caracter$

		Set numeric value: contador_estrofas, "duracion", duracion_estrofa

		Set numeric value: contador_estrofas, "velocidad", velocidad_estrofa

		Set numeric value: contador_estrofas, "tiempoPausas", tiempo_pausas_intra_estrofa

		Set numeric value: contador_estrofas, "enePausas", ene_pausas

		Set numeric value: contador_estrofas, "PausasPorTiempo", pausas_por_tiempo

		Set numeric value: contador_estrofas, "tiempoEnunciados", tiempo_enunciados

		Set numeric value: contador_estrofas, "eneEnunciados", ene_enunciados

		Set numeric value: contador_estrofas, "EnunciadosPorTiempo", tiempo_por_enunciado

		select tg_estrofa

		Remove

	endif

endfor


select tabla_estrofa

Rename: composicion$


# Pendiente: guardar tabla










