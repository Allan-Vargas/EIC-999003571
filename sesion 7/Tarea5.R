#Tarea 5
#Grupo
#Allan Antonio Vargas Escobar	- 999003571
#Ilving Omark Velasquez Mazariegos - 999003700
#Fecha 14/10/2020


#EJERCICIO 1

#1.	Definir la hipótesis nula
#Ho: µ>=20000
#2.	Definir la hipótesis alternativa 
#H1: µ<20000
#3.	Definir el nivel de confianza y alfa
confianza: 0.97
alfa: 0.03
#4.	Definir valores (n, media, sd, var, etc)
n <- 100 
media <- 19500 
desv <- 3900 
µ <- 20000
#5.	Obtener valor del estadístico de prueba
Z0 <- (media-µ)/(desv/sqrt(n)) 
Z0 
#6.	Obtener valor de la distribución
Zalfa <- qnorm(0.03,0,1, lower.tail = TRUE) 
Zalfa 
#7.	Validar la hipótesis
abs(Z0) < Zalfa 
# se acepta hipotesis nula.



#EJERCICIO 2

#1.	Definir la hipótesis nula
#Ho: σ2<=40
#2.	Definir la hipótesis alternativa 
#H1: σ2>40 
  
#3.	Definir el nivel de confianza y alfa
nivelconfianza<- 1-alfa
alfa <- 0.05
  
#4.	Definir valores (n, media, sd, var, etc)
n= 10
s2 <- 27  
sigma2<- 40

#5.	Obtener valor del estadístico de prueba
X2 <- ((n-1)*s2)/sigma2
X2
#6.	Obtener valor de la distribución
chi_sd<- qchisq(1-alfa, n-1)
chi_sd


#7.	Validar la hipótesis
X2 > chi_sd
#R/ se acepta hipotesis nula, donde la variabilidad es de menor o igual a 40.


#EJERCICIO 3
#1.	Definir variables
media <- 35
n <-30
desv <- 3.5
alfa <- 0.05/2
nivelconfianza<- 1-alfa

#2.	Defina normal ajustada
normal<- qnorm(nivelconfianza,0,1)
normal

#3.	Defina Error
error<-  desv/sqrt(n)
error

#4.	Defina limites superior e inferior del intervalo de confianza 
margen <- normal*error
margen
limInf<- media - margen
limsup <- media +margen
limInf
limsup
#R/ Liminf 33.74756, Limsup 36.25244





#EJERCICIO 4
#1.	Definir variables

media <- 500
n <-5000
desv <- 100
alfa <- 0.1/2
nivelconfianza<- 1-alfa

#2.	Defina normal ajustada

normal<- qnorm(nivelconfianza,0,1)
normal

#3.	Defina Error
error<-  desv/sqrt(n)
error

#4.	Defina limites superior e inferior del intervalo de confianza
margen <- normal*error
margen
limInf<- media - margen
limsup <- media +margen
limInf
limsup

#R/ Liminf 497.6738, Limsup 502.3262




#EJERCICIO 5
install.packages("car")
install.packages("carData")
install.packages("tidyverse")
install.packages("nortest")
?lm

#1 y 2.	Definir regresión entre Girth (y) y Height(x) e indique la formula generada
lm.trees <- lm(Girth~Height, data=trees)
summary (lm.trees)
plot (trees$Girth ~trees$Height)
?abline
abline (lm.trees)

#3.	Indique su intercepto, coeficiente de correlación R2 y R ajustado
#Intercepto: -6.1884
#Coeficiente de correlación R2: 0.2697
#R ajustado: 0.2445

#4 y 5.	Definir regresión entre Girth  y volumen (x) e indique la formula generada
lm.trees2 <- lm(Girth~Volume, data=trees)
summary (lm.trees2)
plot (trees$Girth ~trees$Volume)
?abline
abline (lm.trees2)


#6.	Indique su intercepto, coeficiente de correlación R2 y R ajustado
#Intercepto: 7.677857
#Coeficiente de correlación R2: 0.9353
#R ajustado: 0.9331

#7.	¿Cuál de las dos regresiones se ajusta mejor al modelo?
#R/ la mejor ajustada es la regresión entre Girth y volumen.


