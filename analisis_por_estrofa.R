
estrofa <- read.csv("https://raw.githubusercontent.com/DomingoRomanMontesDeOca/domingo-roman/master/public/vp001_estrofas.Table")



str(estrofa)

par(mfrow=c(1,2))
plot(estrofa[,3], col = "red", lty=2, type="b", ylim = c(13,16), main ="Duración")
grid()

plot(estrofa[,4], col = "red", lty=2, type="b", ylim=c(1.2,1.8), main ="Velocidad")
grid()

# son paralelos duración y velocidad





# tiempo total de pausas, número de pausas y pausas/tiempo
par(mfrow=c(1,3))
plot(estrofa[,5], col = "red", lty=2, type="b", ylim = c(1,2.5), main ="Tiempo total de pausas")
grid()

plot(estrofa[,6], col = "red", lty=2, type="b", ylim = c(6,1), main ="Número de pausas")
grid()

plot(estrofa[,7], col = "red", lty=2, type="b", ylim = c(0.3,0.8), main ="Pausas/ tiempo")
grid()






# tiempo de enunciados, ene enunciados, enunciados / tiempo
par(mfrow=c(1,3))
plot(estrofa[,8], col = "red", lty=2, type="b", ylim = c(12,15), main ="Tiempo total enunciados")
grid()

plot(estrofa[,9], col = "red", lty=2, type="b", main ="Número de enunciados")
grid()

plot(estrofa[,10], col = "red", lty=2, type="b", ylim=c(1,1.5), main ="Enunciados / tiempo")
grid()

