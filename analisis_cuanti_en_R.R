#Casa mapa
setwd("/Users/Mapa/Documents/violeta_parra")


# casa Imac
setwd("/Users/guru/Documents/vparra/corpus")

# Universidad
setwd("/Users/imac/Documents/violetaParra/septiembre2024")

 # por verso
data <- read.csv('data.txt')

# por estrofa
data_g <- read.csv('data_g.txt')
str(data_g)
comp001 <- subset(data_g,composicion == 1)
comp002 <- subset(data_g,composicion == 2)
comp003 <- subset(data_g,composicion == 3)









str(data)

caso001 <- subset(data, composicion == 1)
caso002 <- subset(data, composicion == 2)
caso003 <- subset(data, composicion == 3)

duracion = c(mean(caso001[,6]), mean(caso002[,6]), mean(caso003[,6]))
xf0_todas = c(mean(caso001[,7]), mean(caso002[,7]), mean(caso003[,7]))
stMm_todas = c(mean(caso001[,8]), mean(caso002[,8]), mean(caso003[,8]))
stT_todas <- c(mean(caso001[,9]), mean(caso002[,9]), mean(caso003[,9]))


primera001 <- subset(caso001,estrofa=="1")
segunda001 <- subset(caso001,estrofa=="2")
tercera001 <- subset(caso001,estrofa=="3")
cuarta001 <- subset(caso001,estrofa=="4")
quinta001 <- subset(caso001,estrofa=="5")



primera002 <- subset(caso002,estrofa=="1")
segunda002 <- subset(caso002,estrofa=="2")
tercera002 <- subset(caso002,estrofa=="3")
cuarta002 <- subset(caso002,estrofa=="4")
quinta002 <- subset(caso002,estrofa=="5")


primera003 <- subset(caso003,estrofa=="1")
segunda003 <- subset(caso003,estrofa=="2")
tercera003 <- subset(caso003,estrofa=="3")
cuarta003 <- subset(caso003,estrofa=="4")
quinta003 <- subset(caso003,estrofa=="5")



#########################
######    GRAFICOS     ###########
#########################

# generales

# duracion [,4]

# x f0[,5]

# semitonos máx y mín [,8]

# Duración por estrofa en las tres composiciones
plot.new()
plot(comp001[,4], type ="b",col = "red", ylim=c(12,18), ylab="",xaxt= "n",yaxt="n", xlab= "", main="Duración por estrofa")
grid()
par(new=TRUE)
plot(comp002[,4], type ="b",col = "blue", ylim=c(12,18), yxat="n", xaxt= "n", ylab="", xlab= "")
par(new=TRUE)
plot(comp003[,4], type ="b",col = "gray", ylim=c(12,18), ylab="Segundos", xlab= "Estrofas", yxat="n")
axis(1, at=(1:5), labels=c("1", "2", "3", "4", "5"))


# Promedios de f0 
plot.new()
plot(comp001[,5], type ="b",col = "red", ylim=c(200,400), ylab="Hz", xlab= "Estrofas", main="Promedios de f0 por estrofa")
grid()
axis(1, at=(1:5), labels=c("1", "2", "3", "4", "5"))
par(new=TRUE)
plot(comp002[,5], type ="b",col = "blue", ylim=c(200,400), ylab="", xlab= "")
par(new=TRUE)
plot(comp003[,5], type ="b",col = "gray", ylim=c(200,400), ylab="", xlab= "")


# st máximo y mínimo

plot.new()
plot(comp001[,8], type ="b",col = "red", ylim=c(5,30), ylab="st", xlab= "Estrofas", main="St entre Max y min por estrofa")
grid()
axis(1, at=(1:5), labels=c("1", "2", "3", "4", "5"))
par(new=TRUE)
plot(comp002[,8], type ="b",col = "blue", ylim=c(5,30), ylab="", xlab= "")
par(new=TRUE)
plot(comp003[,8], type ="b",col = "gray", ylim=c(5,30), ylab="", xlab= "")









####### valores generales para los gráficos

axis_versos <- c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10")
dursegs = c(1,2)
valoresf0 = c(150,400)
rangost <- c(0,25)
rangost_T <- c(-20,5)
rangoP <- c(-10,10)
rangoPT <- c(-80, 20)
#########################



# específicos
# Duración por verso y por estrofa


par(mfrow= c(1,3))
plot(primera001[,4],primera001[,6], type="b", col = "red", ylim=dursegs, ylab= "Segundos", xlab = "Versos", main = "Duración cada verso composición 1")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda001[,4], segunda001[,6], type="b", col = "blue", ylim=dursegs, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera001[,4], tercera001[,6], type="b", col = "green", ylim=dursegs, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta001[,4], cuarta001[,6], type="b", col = "brown", ylim=dursegs, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta001[,4], quinta001[,6], type="b", col = "orange", ylim=dursegs, ylab = "", xlab = "", axes = FALSE)
# dibujar óvalo

plot(primera002[,4],primera002[,6], type="b", col = "red", ylim=dursegs, ylab= "Segundos", xlab = "Versos", main = "Duración cada verso composición 2")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda002[,4], segunda002[,6], type="b", col = "blue", ylim=dursegs, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera002[,4], tercera002[,6], type="b", col = "green", ylim=dursegs, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta002[,4], cuarta002[,6], type="b", col = "brown", ylim=dursegs, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta002[,4], quinta002[,6], type="b", col = "orange", ylim=dursegs, ylab = "", xlab = "", axes = FALSE)

plot(primera003[,4],primera003[,6], type="b", col = "red", ylim=dursegs, ylab= "Segundos", xlab = "Versos", main = "Duración de cada verso en la composición 3")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda003[,4], segunda003[,6], type="b", col = "blue", ylim=dursegs, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera003[,4], tercera003[,6], type="b", col = "green", ylim=dursegs, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta003[,4], cuarta003[,6], type="b", col = "brown", ylim=dursegs, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta003[,4], quinta003[,6], type="b", col = "orange", ylim=dursegs, ylab = "", xlab = "", axes = FALSE)






par(mfrow= c(1,3))## X f0 por verso y por estrofa
#plot.new()
plot(primera001[,4],primera001[,7], type="b", col = "red", ylim=valoresf0, ylab= "Hz", xlab = "Versos", main = "X f0 estrofa 001a")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda001[,4], segunda001[,7], type="b", col = "blue", ylim=valoresf0, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera001[,4], tercera001[,7], type="b", col = "green", ylim=valoresf0, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta001[,4], cuarta001[,7], type="b", col = "brown", ylim=valoresf0, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta001[,4], quinta001[,7], type="b", col = "orange", ylim=valoresf0, ylab = "", xlab = "", axes = FALSE)

#plot.new()
plot(primera002[,4],primera002[,7], type="b", col = "red", ylim=valoresf0, ylab= "Hz", xlab = "Versos", main = "X f0 estrofa 002b")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda002[,4], segunda002[,7], type="b", col = "blue", ylim=valoresf0, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera002[,4], tercera002[,7], type="b", col = "green", ylim=valoresf0, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta002[,4], cuarta002[,7], type="b", col = "brown", ylim=valoresf0, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta002[,4], quinta002[,7], type="b", col = "orange", ylim=valoresf0, ylab = "", xlab = "", axes = FALSE)


#plot.new()

plot(primera003[,4],primera003[,7], type="b", col = "red", ylim=valoresf0, ylab= "Hz", xlab = "Versos", main = "X f0 estrofa 003z")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda003[,4], segunda003[,7], type="b", col = "blue", ylim=valoresf0, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera003[,4], tercera003[,7], type="b", col = "green", ylim=valoresf0, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta003[,4], cuarta003[,7], type="b", col = "brown", ylim=valoresf0, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta003[,4], quinta003[,7], type="b", col = "orange", ylim=valoresf0, ylab = "", xlab = "", axes = FALSE)






## Rango en st verso y por estrofa
par(mfrow= c(1,3))
plot(primera001[,4],primera001[,8], type="b", col = "red", ylim= rangost , ylab= "st", xlab = "Versos", main = "rango st estrofa 001a")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda001[,4], segunda001[,8], type="b", col = "blue", ylim= rangost , ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera001[,4], tercera001[,8], type="b", col = "green", ylim= rangost , ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta001[,4], cuarta001[,8], type="b", col = "brown", ylim= rangost, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta001[,4], quinta001[,8], type="b", col = "orange", ylim= rangost, ylab = "", xlab = "", axes = FALSE)


plot(primera002[,4],primera002[,8], type="b", col = "red", ylim= rangost , ylab= "st", xlab = "Versos", main = "rango st estrofa 002a")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda002[,4], segunda002[,8], type="b", col = "blue", ylim= rangost , ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera002[,4], tercera002[,8], type="b", col = "green", ylim= rangost , ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta002[,4], cuarta002[,8], type="b", col = "brown", ylim= rangost, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta002[,4], quinta002[,8], type="b", col = "orange", ylim= rangost, ylab = "", xlab = "", axes = FALSE)


plot(primera003[,4],primera003[,8], type="b", col = "red", ylim= rangost , ylab= "st", xlab = "Versos", main = "rango st estrofa 003a")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda003[,4], segunda003[,8], type="b", col = "blue", ylim= rangost , ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera003[,4], tercera003[,8], type="b", col = "green", ylim= rangost , ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta003[,4], cuarta003[,8], type="b", col = "brown", ylim= rangost, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta003[,4], quinta003[,8], type="b", col = "orange", ylim= rangost, ylab = "", xlab = "", axes = FALSE)





## Rango en st tonema
par(mfrow= c(1,3))
plot(primera001[,4],primera001[,9], type="b", col = "red", ylim= rangost_T, ylab= "st", xlab = "Versos", main = "st tonema estrofa 001a")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda001[,4], segunda001[,9], type="b", col = "blue", ylim= rangost_T, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera001[,4], tercera001[,9], type="b", col = "green", ylim= rangost_T, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta001[,4], cuarta001[,9], type="b", col = "brown", ylim= rangost_T, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta001[,4], quinta001[,9], type="b", col = "orange", ylim= rangost_T, ylab = "", xlab = "", axes = FALSE)



plot(primera002[,4],primera002[,9], type="b", col = "red", ylim= rangost_T, ylab= "st", xlab = "Versos", main = "st tonema estrofa 002b")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda002[,4], segunda002[,9], type="b", col = "blue", ylim= rangost_T, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera002[,4], tercera002[,9], type="b", col = "green", ylim= rangost_T, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta002[,4], cuarta002[,9], type="b", col = "brown", ylim= rangost_T, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta002[,4], quinta002[,9], type="b", col = "orange", ylim= rangost_T, ylab = "", xlab = "", axes = FALSE)


plot(primera003[,4],primera003[,9], type="b", col = "red", ylim= rangost_T, ylab= "st", xlab = "Versos", main = "st tonema estrofa 003z")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda003[,4], segunda003[,9], type="b", col = "blue", ylim= rangost_T, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera003[,4], tercera003[,9], type="b", col = "green", ylim= rangost_T, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta003[,4], cuarta003[,9], type="b", col = "brown", ylim= rangost_T, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta003[,4], quinta003[,9], type="b", col = "orange", ylim= rangost_T, ylab = "", xlab = "", axes = FALSE)



#### Pendiente del verso
par(mfrow= c(1,3))
plot(primera001[,4],primera001[,10], type="b", col = "red", ylim= rangoP, ylab= "st/s", xlab = "Versos", main = "Pendiente composición 1")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda001[,4], segunda001[,10], type="b", col = "blue", ylim= rangoP, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera001[,4], tercera001[,10], type="b", col = "green", ylim= rangoP, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta001[,4], cuarta001[,10], type="b", col = "brown", ylim= rangoP, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta001[,4], quinta001[,10], type="b", col = "orange", ylim= rangoP, ylab = "", xlab = "", axes = FALSE)



plot(primera002[,4],primera002[,10], type="b", col = "red", ylim= rangoP, ylab= "st/s", xlab = "Versos", main = "Pendiente composición 2")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda002[,4], segunda002[,10], type="b", col = "blue", ylim= rangoP, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera002[,4], tercera002[,10], type="b", col = "green", ylim= rangoP, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta002[,4], cuarta002[,10], type="b", col = "brown", ylim= rangoP, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta002[,4], quinta002[,10], type="b", col = "orange", ylim= rangoP, ylab = "", xlab = "", axes = FALSE)



plot(primera003[,4],primera003[,10], type="b", col = "red", ylim= rangoP, ylab= "st/s", xlab = "Versos", main = "Pendiente composición 3")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda003[,4], segunda003[,10], type="b", col = "blue", ylim= rangoP, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera003[,4], tercera003[,10], type="b", col = "green", ylim= rangoP, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta003[,4], cuarta003[,10], type="b", col = "brown", ylim= rangoP, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta003[,4], quinta003[,10], type="b", col = "orange", ylim= rangoP, ylab = "", xlab = "", axes = FALSE)






#### Pendiente del tonema
par(mfrow= c(1,3))
plot(primera001[,4],primera001[,11], type="b", col = "red", ylim= rangoPT, ylab= "st/s", xlab = "Versos", main = "Pendiente del tonema composición 1")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda001[,4], segunda001[,11], type="b", col = "blue", ylim= rangoPT, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera001[,4], tercera001[,11], type="b", col = "green", ylim= rangoPT, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta001[,4], cuarta001[,11], type="b", col = "brown", ylim= rangoPT, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta001[,4], quinta001[,11], type="b", col = "orange", ylim= rangoPT, ylab = "", xlab = "", axes = FALSE)



plot(primera002[,4],primera002[,11], type="b", col = "red", ylim= rangoPT, ylab= "st/s", xlab = "Versos", main = "Pendiente del tonema composición 2")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda002[,4], segunda002[,11], type="b", col = "blue", ylim= rangoPT, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera002[,4], tercera002[,11], type="b", col = "green", ylim= rangoPT, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta002[,4], cuarta002[,11], type="b", col = "brown", ylim= rangoPT, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta002[,4], quinta002[,11], type="b", col = "orange", ylim= rangoPT, ylab = "", xlab = "", axes = FALSE)



plot(primera003[,4],primera003[,11], type="b", col = "red", ylim= rangoPT, ylab= "st/s", xlab = "Versos", main = "Pendiente del tonema composición 3")
axis(1, at=(1:10), labels=axis_versos)
abline(v=4.5)
grid()
par(new=TRUE)
plot(segunda003[,4], segunda003[,11], type="b", col = "blue", ylim= rangoPT, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(tercera003[,4], tercera003[,11], type="b", col = "green", ylim= rangoPT, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(cuarta003[,4], cuarta003[,11], type="b", col = "brown", ylim= rangoPT, ylab = "", xlab = "", axes = FALSE)
par(new=TRUE)
plot(quinta003[,4], quinta003[,11], type="b", col = "orange", ylim= rangoPT, ylab = "", xlab = "", axes = FALSE)




# general por estrofa
par(mfrow=c(1,3))
plot(data_g[,2],type="b", ylab= "segundos", xlab="Estrofa", main ="Duración")
grid()

plot(data_g[,3],type="b", ylab= "Hz", xlab="Estrofa", main = "Promedio f0")
grid()

plot(data_g[,6],type="b", ylab= "st", xlab="Estrofa", main = "Rango st")
grid()
