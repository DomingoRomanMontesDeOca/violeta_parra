# Primera tarea: dada una composición de 5 décimas, etiquetarla

# usar el número de composición en el libro

# el numero debe tener 3 caracteres: "001", "025", "102", etc.




# Elegir el directorio donde guardar el audio y el TextGrid

directorio$ = chooseDirectory$: "Elije el directorio"


estrofa = selected("Sound")

estrofa$ = selected$("Sound")

estrofa_tg = To TextGrid: "1 2 3", "3"



# Permite editar el TextGrid

select estrofa

plus estrofa_tg

View & Edit

pauseScript: "Etiquetar"

# Al cerrar la pausa, se guardan audio y TextGrid

select estrofa


Save as WAV file: "'directorio$'/'estrofa$'.wav"

select estrofa_tg

Save as text file: "'directorio$'/'estrofa$'.TextGrid"

