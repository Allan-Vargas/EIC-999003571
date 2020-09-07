#Alumno: Allan Antonio Vargas Escobar carne: 999003571
#Se sube el dataframe Car para poder realizar los calculos solicitados en la tarea 1 de la sesion 2

library(readr)
Car <- read_csv("SESION 2/Car.csv")
View(Car)
summary(Car)

#?Cual es la velocidad promedio en la Categoria Speed1?

mean(Car$speed1)
#R//la velocidad promedio de Speed1 es 84.66695



#?Cual es el tipo más frecuente en la categoria Type4?

library(modeest)
mfv(Car$type4)

mlv(Car$type4, method = "mfv")

#R//el tipo mas frecuente en la categoria 4, fue van




#?La desviacion estandar en la Polucion tipo 3 y 5 (pollution3 y pollution5) es?

sd(Car$pollution3)
sd(Car$pollution5)  

#R// la desviacion estandar de Polucion 3 es 0.2034444 y Polucion 5 es 0.2659942



#FINAL TAREA1
