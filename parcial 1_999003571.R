#Parcial 1 fecha 26/09/2020
#Alumno: Allan Antonio Vargas Escobar carnet: 999003571
#base de datos

#1. Utilizando el conjunto de datos "airquality" ¿Cuál es la media, mediana y moda de la variable Temp?
View(airquality)
airquality

#promedio
mean(airquality$Temp)
#mediana
median(airquality$Temp)
#moda
library(modeest)
mfv(airquality$Temp)
mlv(airquality$Temp, method = "mfv")

#R/ la media es 77.88235, mediana 79, y moda 81.


#2. Utilizando el conjunto de datos "airquality" calcule el grado de simetría de la variable SolarR. ¿Qué significa el valor de su simetría?

library(psych)
skew(airquality$Solar.R)

#R/ la asimetria de SolarR es de -0.4192893 siendo esta negativa, y los datos se reunen mas a la derecha.

#3. Utilizando el conjunto de datos "airquality" ¿Cuál es la media, mediana y moda de la variable Wind?

#promedio
mean(airquality$Wind)
#mediana
median(airquality$Wind)
#moda
library(modeest)
mfv(airquality$Wind)
mlv(airquality$Wind, method = "mfv")

#R/ la media es 9.957516, la mediana es 9.7, moda es 11.5


#4. Utilizando el conjunto de datos "airquality" indique qué desviación estándar es más adecuada. ¿La de Wind o la de Ozono?
?sd
sd(airquality$Wind)
sd(airquality$Ozone, na.rm = TRUE)

#R/desviación estandar de wind es 3.523001 y la de Ozone es 32.98788, siendo la mas adecuada wind por ser mas pequeña y tener los datos menos dispersos respecto a la media.


#5. Utilizando el conjunto de datos "airquality" grafique el histograma de la variable Ozono e indique qué tipo de asimetría tiene

skew(airquality$Ozone)

hist(x = airquality$Ozone, main = "Calidad de aire", 
     xlab = "Ozone", ylab = "Frecuencia")

#R/ la asimetria de Ozone es de 1.209866 siendo esta positiva, y los datos se reunen mas a la izquierda.

#6. Utilizando el conjunto de datos "diamonds" y la librería GGPLOT realice un histograma con la variable Carat en su eje X. ¿Qué tipo de simetría presenta la gráfica?

View(diamonds)

skew(diamonds$carat)

library(ggplot2)

ggplot(diamonds) + 
  geom_histogram(binwidth = 0.2, aes(x = carat), fill = 'steelblue') + 
  xlab("carat") + 
  ylab("Frecuencia") + 
  ggtitle("Distribución de la variable carat") +
  theme_minimal()


#R/ observando el histograma es una asimetria positiva, con mayor datos a la izquierda, se saco el valor para corroborar siendo de 1.11.


#7. Utilizando el conjunto de datos "diamonds" y la librería GGPLOT y realizando el diagrama de cajas entre las variables Carat y Price indique cuál de las siguientes opciones es correcta


ggplot(data = diamonds, aes(x = carat, y = price)) + 
  geom_boxplot(color = 'black', alpha = 0.6) +  
  xlab('carat') + 
  ylab('price') +
  ggtitle('carat por price') + 
  theme_minimal()

#R/ ninguna es correcta


#8. Utilizando el conjunto de datos "diamonds" y la librería GGPLOT y realizando un diagráma de dispersión entre las variables "Y" y "Z", indique la relación entre las variables (Seleccione 2 posibles respuestas)

ggplot(diamonds, aes(x = y, y = z)) + 
  geom_point() + geom_smooth()

#R/ a y e.

#9. Utilizando el conjunto de datos "diamonds" y la librería GGPLOT y realizando un diagrama de dispersión entre las variables Carat y Price indique la relación de las variables

ggplot(diamonds, aes(x = carat, y = price)) + geom_point()


#R/ a.


#10. Utilizando el conjunto de datos "diamonds" y la librería GGPLOT, diagrame una gráfica de barras con la variable color. ¿Cual es el color con mayor frecuencia?

ggplot(diamonds, aes(x = color)) + 
  geom_bar(color = 'darkslategray', fill = 'steelblue') + 
  xlab("color") + 
  ylab("frecuencias") + 
  ggtitle("Gráfico de Barras")

#R/ el grupo G.


#11. Se ha tomado una muestra de 20 elementos, donde la probabilidad de éxito es del 60%. Calcule la probabilidad de densidad y grafique sus valores. ¿Qué tipo de sesgo se observa en los resultados?


dpois(0:48, 20)
barplot(dpois(0:48, 20), main = "Probabilidad", xlab = "Quejas", ylab = "Probabilidad")

#R/ sesgo negativo porque p >0.5

#12. Una oficina de servicio al cliente recibe en promedio 20 quejas en un día. Calcule la probabilidad de densidad y grafique sus valores. ¿Qué observa en la gráfica?

dbinom(0:20, 20, 0.6)
dbinomial <- dbinom(0:20, 20, 0.6)
barplot(dbinomial, main = "Probabilidad de Exito", xlab = "exitos", ylab = "frecuencia")

#R/ la gráfica es simetrica.

