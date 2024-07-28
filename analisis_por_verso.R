
# julio 25


data <- read.csv("https://raw.githubusercontent.com/DomingoRomanMontesDeOca/domingo-roman/master/public/vp_001.Table")

str(data)

boxplot(data[,6], data[,14])

estrofa_1 <- subset(data, estrofa == "1")
estrofa_2 <- subset(data, estrofa == "2")
estrofa_3 <- subset(data, estrofa == "3")
estrofa_4 <- subset(data, estrofa == "4")
estrofa_5 <- subset(data, estrofa == "5")






# 5 es duración
par(mfrow=c(2,3))
plot(estrofa_1[,5], type ="b", col = "red", main="Duración por verso estrofa 1", ylab="Segundos", xlab= "Versos", ylim = c(1,2))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_2[,5], type ="b", col = "red", main="Duración por verso estrofa 2", ylab="Segundos", xlab= "Versos", ylim = c(1,2))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_3[,5], type ="b", col = "red", main="Duración por verso estrofa 3", ylab="Segundos", xlab= "Versos", ylim = c(1,2))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_4[,5], type ="b", col = "red", main="Duración por verso estrofa 4", ylab="Segundos", xlab= "Versos", ylim = c(1,2))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_5[,5], type ="b", col = "red", main="Duración por verso estrofa 5", ylab="Segundos", xlab= "Versos", ylim = c(1,2))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()



# 6 es velocidad

par(mfrow=c(2,3))
plot(estrofa_1[,6], type ="b", col = "red", main="f0 por verso estrofa 1", ylab="Sílabas / segundo", xlab= "Versos",ylim=c(4,9))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_2[,6], type ="b", col = "red", main="Velocidad por verso estrofa 2", ylab="Sílabas / segundo", xlab= "Versos",ylim=c(4,9))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_3[,6], type ="b", col = "red", main="Velocidad por verso estrofa 3", ylab="Sílabas / segundo", xlab= "Versos",ylim=c(4,9))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_4[,6], type ="b", col = "red", main="Velocidad por verso estrofa 4", ylab="Sílabas / segundo", xlab= "Versos",ylim=c(4,9))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_5[,6], type ="b", col = "red", main="Velocidad por verso estrofa 5", ylab="Sílabas / segundo", xlab= "Versos",ylim=c(4,9))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()



# 7 mínimo de f0 y 8 máximo de d f0
par(mfrow=c(2,3))
plot(estrofa_1[,7], type ="b", col = "blue", main="Máximo y mínimo de f0 por verso estrofa 1", ylab="Hz", xlab= "Versos",ylim=c(80,500))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
par(new=T)
plot(estrofa_1[,8], type ="b", col = "red", ylab="", xlab= "",ylim=c(80,500))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_2[,7], type ="b", col = "blue", main="Máximo y mínimo de f0 por verso estrofa 2", ylab="Hz", xlab= "Versos",ylim=c(80,500))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
par(new=T)
plot(estrofa_2[,8], type ="b", col = "red", ylab="", xlab= "",ylim=c(80,500))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_3[,7], type ="b", col = "blue", main="Máximo y mínimo de f0 por verso estrofa 3", ylab="Hz", xlab= "Versos",ylim=c(80,500))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
par(new=T)
plot(estrofa_3[,8], type ="b", col = "red", ylab="", xlab= "",ylim=c(80,500))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()


plot(estrofa_4[,7], type ="b", col = "blue", main="Máximo y mínimo de f0 por verso estrofa 4", ylab="Hz", xlab= "Versos",ylim=c(80,500))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
par(new=T)
plot(estrofa_4[,8], type ="b", col = "red", ylab="", xlab= "",ylim=c(80,500))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()


plot(estrofa_5[,7], type ="b", col = "blue", main="Máximo y mínimo de f0 por verso estrofa 5", ylab="Hz", xlab= "Versos",ylim=c(80,500))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
par(new=T)
plot(estrofa_5[,8], type ="b", col = "red", ylab="", xlab= "",ylim=c(80,500))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()


# 9 Campo tonal 

par(mfrow=c(2,3))
plot(estrofa_1[,9], type ="b", col = "red", main="Campo tonal por verso estrofa 1", ylab="st", xlab= "Versos",ylim=c(0,40))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()


plot(estrofa_2[,9], type ="b", col = "red", main="Campo tonal  por verso estrofa 2", ylab="st", xlab= "Versos",ylim=c(0,40))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_3[,9], type ="b", col = "red", main="Campo tonal  por verso estrofa 3", ylab="st", xlab= "Versos",ylim=c(0,40))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_4[,9], type ="b", col = "red", main="Campo tonal por verso estrofa 4", ylab="st", xlab= "Versos",ylim=c(0,40))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_5[,9], type ="b", col = "red", main="Campo tonal por verso estrofa 5", ylab="st", xlab= "Versos",ylim=c(0,40))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5)
grid()





# 10. Pendiente del verso

par(mfrow=c(2,3))
plot(estrofa_1[,10], type ="b", col = "red", main="Pendiente por verso estrofa 1", ylab="st / segundo", xlab= "Versos",ylim=c(-0.1,0.02))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_2[,10], type ="b", col = "red", main="Pendiente por verso estrofa 2", ylab="st / segundo", xlab= "Versos",ylim=c(-0.1,0.02))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_3[,10], type ="b", col = "red", main="Pendiente por verso estrofa 3", ylab="st / segundo", xlab= "Versos",ylim=c(-0.1,0.02))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_4[,10], type ="b", col = "red", main="Pendiente por verso estrofa 4", ylab="st / segundo", xlab= "Versos",ylim=c(-0.1,0.02))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_5[,10], type ="b", col = "red", main="Pendiente por verso estrofa 5", ylab="st / segundo", xlab= "Versos",ylim=c(-0.1,0.02))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()


# 11 st del tonema

par(mfrow=c(2,3))
plot(estrofa_1[,11], type ="b", col = "red", main="Pendiente por verso estrofa 1", ylab="st", xlab= "Versos",ylim=c(-13,5))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_2[,11], type ="b", col = "red", main="Pendiente por verso estrofa 2", ylab="st", xlab= "Versos",ylim=c(-13,5))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_3[,11], type ="b", col = "red", main="Pendiente por verso estrofa 3", ylab="st", xlab= "Versos",ylim=c(-13,5))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_4[,11], type ="b", col = "red", main="Pendiente por verso estrofa 4", ylab="st", xlab= "Versos",ylim=c(-13,5))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_5[,11], type ="b", col = "red", main="Pendiente por verso estrofa 5", ylab="st", xlab= "Versos",ylim=c(-13,5))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()






# 12 Pendiente del tonema
par(mfrow=c(2,3))
plot(estrofa_1[,11], type ="b", col = "red", main="Pendiente tonema por verso estrofa 1", ylab="Sílabas / segundo", xlab= "Versos",ylim=c(-50,12))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_2[,11], type ="b", col = "red", main="Pendiente tonema por verso estrofa 2", ylab="st / segundo", xlab= "Versos",ylim=c(-50,12))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_3[,11], type ="b", col = "red", main="Pendiente tonema por verso estrofa 3", ylab="st / segundo", xlab= "Versos",ylim=c(-50,12))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_4[,11], type ="b", col = "red", main="Pendiente tonema por verso estrofa 4", ylab="st / segundo", xlab= "Versos",ylim=c(-50,12))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

plot(estrofa_5[,11], type ="b", col = "red", main="Pendiente tonema por verso estrofa 5", ylab="st / segundo", xlab= "Versos",ylim=c(-50,12))
axis(1, las=1, at = c(1:10), labels = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
abline(v=4.5, lty=3)
grid()

