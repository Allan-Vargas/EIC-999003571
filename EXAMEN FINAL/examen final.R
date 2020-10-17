#Examen Final 17/10/2020
#Allan Antonio Vargas Escobar   carnet 999003571

#pregunta 11  ¿Cuál es el intervalo de confianza con alfa=5%? 
media <- 173.47
n <-15
desv <- 4
alfa <- 0.05/2
nivelconfianza<- 1-alfa

normal<- qnorm(nivelconfianza,0,1)
normal
error<-  desv/sqrt(n)
error
margen <- normal*error
margen
limInf<- media - margen
limsup <- media +margen
limInf
limsup
#R/ Liminf 171.4458, Limsup 175.4942


#pregunta 12 ¿Cuál es el valor de la normal utilizada con alfa=5%?

normal
#R/1.959964

#pregunta 13 Si el nivel de significancia fuera 20%, ¿Cuál sería el valor de la normal? 

media <- 173.47
n <-15
desv <- 4
alfa <- 0.20/2
nivelconfianza<- 1-alfa

normal<- qnorm(nivelconfianza,0,1)
normal
error<-  desv/sqrt(n)
error
margen <- normal*error
margen
limInf<- media - margen
limsup <- media +margen
limInf
limsup

#R/ 1.281552

#pregunta 14 ¿Cuál sería el intervalo de confianza con un alfa = 80%?

limInf
limsup

#R/ limite inferior 172.1464 y limite superior 174.7936

#pregunta 15 ¿Cuál es el valor del margen del intervalo en ambos casos?

#R/5%:  2.02    20%:  1.32


#pregunta 16 ¿Cuál es el valor de alfa?  
#H0: mu>= 800
#H1: mu< 800
µ <- 800
sigma <- 120
n <- 50
mediamuestra <- 750
alfa <- 0.01

#R/ 0.01

#pregunta 17 ¿Cuál es el valor de la media poblacional? 

#R/ media poblacional es 800

#pregunta 18. ¿Cuál es el valor del estadístico de prueba? 

Z0 <- (mediamuestra-µ)/(sigma/sqrt(n)) 
Z0 
#R/ -2.946278

#pregunta 19. ¿Se acepta o se rechaza la H0? 

Zalfa <- qnorm(0.99,0,1, lower.tail = FALSE) 
Zalfa

abs(Z0) < Zalfa

#R/ se rechaza hipotesis nula.



#pregunta 20 ¿Cuál es el valor de H0?

#R/H0: s2<=4

#pregunta 21.¿Cuál es el valor de chi-cuadrado?


alfa <- 0.05
nivelconfianza<- 1-alfa

n= 24
s2 <- 4.9  
sigma20<- 4
X2 <- ((n-1)*s2)/sigma20
X2

chi_sd<- qchisq(1-alfa, n-1)
chi_sd

X2 > chi_sd

#R/35.17246

#pregunta 22. ¿Cuál es el valor del estadístico de prueba? 
#R/28.175

#pregunta 23. ¿Cuántos grados de libertad se utilizaron en este ejercicio?

#R/ n-1= 23

#pregunta 24. ¿Se rechaza o se acepta la H0? 
#se acepta hipotesis nula.



# pregunta 25. correlacion entre Volume y Height

lm.trees <- lm(Volume~Height, data=trees)
summary (lm.trees)
plot (trees$Volume ~trees$Height)
?abline
abline (lm.trees)

#R/0.3579


# pregunta 26. correlacion entre Volume y girth
lm.trees2 <- lm(Girth~Volume, data=trees)
summary (lm.trees2)
plot (trees$Girth ~trees$Volume)
?abline
abline (lm.trees2)
#R/ 0.9353

#pregunta 27. ¿cómo se representa el modelo de regresión lineal? 
lm.trees2
#R/ 7.6779  +    0.1846 
#pregunta 28. regresión lineal entre Volumen y Girth ¿Cuál es el valor de R2 Ajustado?

#R/ 0.9331

# pregunta 29. graficar, ¿qué puede deducir de ella? 
plot (Girth~Volume, data=trees)
?abline
abline (lm.trees2)
#R/ d.
