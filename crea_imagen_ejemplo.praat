# Crea la imagen de ejemplo que se presenta en el documento.
# Requiere el TextGrid y el Pitch editado.
# Ell TextGrid muestra estrofa, verso, marcas del tonema e inicio de la inflexión en el verso octavo
# Grafica el pitch suavizado

tg = selected("TextGrid")

tono2 = selected("Pitch")


select tono2
tono = Smooth: 10



select tg

ini = Get start time of interval: 1, 2

fin = Get end time of interval: 1, 2

Erase all

Select inner viewport: 0.5, 9.5, 0.5, 2


select tono

Blue

Speckle: ini, fin, 100, 500, "no"


Black

Draw inner box

Marks right every: 1, 100, "yes", "yes", "yes"

Text right: "yes", "Hz"

Select inner viewport: 0.5, 9.5, 0.5, 3.5

Draw inner box

select tg

Draw: ini, fin, "no", "no", "no"

tiempo_1 = Get end time of interval: 2, 2
tiempo_2 = Get end time of interval: 2, 3
tiempo_3 = Get end time of interval: 2, 4
tiempo_4 = Get end time of interval: 2, 5
tiempo_5 = Get end time of interval: 2, 6
tiempo_6 = Get end time of interval: 2, 7
tiempo_7 = Get end time of interval: 2, 8
tiempo_8 = Get end time of interval: 2, 9
tiempo_9 = Get end time of interval: 2, 10
tiempo_10 = Get end time of interval: 2, 11
tiempo_11 = Get end time of interval: 2, 12
tiempo_12 = Get end time of interval: 2, 13
tiempo_13 = Get end time of interval: 2, 14
tiempo_14 = Get end time of interval: 2, 15


Draw line: tiempo_1,-1, tiempo_1, 1
Draw line: tiempo_1, -1, tiempo_1, 1
Draw line: tiempo_2, -1, tiempo_2, 1
Draw line: tiempo_3, -1, tiempo_3, 1
Draw line: tiempo_4, -1, tiempo_4, 1
Draw line: tiempo_5, -1, tiempo_5, 1
Draw line: tiempo_6, -1, tiempo_6, 1
Draw line: tiempo_7, -1, tiempo_7, 1
Draw line: tiempo_8, -1, tiempo_8, 1
Draw line: tiempo_9, -1, tiempo_9, 1
Draw line: tiempo_10, -1, tiempo_10, 1
Draw line: tiempo_11, -1, tiempo_11, 1
Draw line: tiempo_12, -1, tiempo_12, 1
Draw line: tiempo_13, -1, tiempo_13, 1

# Estrofa
# Verso y número de acentos
# Inicio y fin del tonema
# inicio de inflexión en el verso 8

Select outer viewport: 0.5, 10.15, 0.43, 3.5


select tono
Remove
