#Tarea 2 
#Grupo
#Allan Antonio Vargas Escobar	- 999003571
#Ilving Omark Velasquez Mazariegos - 999003700
#Fecha 8/10/2020


#EJERCICIO 1 

#1. Definir la hipótesis nula  
# Ho: µ>= 500 

#2. Definir la hipótesis alternativa 
# -h1: µ< 500 

#3. Definir el nivel de significancia y alfa 
#Significancia es de 0.95 
alfa <- 0.05 


#4. Definir valores 
n <- 100 
media <- 499.4 
desv <- 5 
µ <- 500  

# 5 Obtener valor del estadístico de prueba 
# Prueba de hipótesis para media con desviación conocida 
Z0 <- (media-µ)/(desv/sqrt(n)) 
Z0 

# 6 Obtener valor de la distribución 
Zalfa <- qnorm(0.95,0,1, lower.tail = TRUE) 
Zalfa 

# 7 Validar la hipótesis 
abs(Z0) < Zalfa 
# Se rechaza hipotesis nula. 





#EJERCICIO 2


#1.	Definir la hipótesis nula
µ<=40

#2.	Definir la hipótesis alternativa 
µ>40

#3.	Definir el nivel de significancia y alfa
Significancia <- 0.99
alfa <- 0.01

#4.	Definir valores (n, media, sd, var, etc)
n <- 8
s <- 2
Varianza <- 25
media <- 42
µ <- 40

#5. Obtener valor del estadistico de prueba
t0 <- (media-µ)/(s/sqrt(n)) 
t0
#6. Obtener valor de la distribución
tAlfa <- qt((alfa),(n-1), lower.tail = FALSE)
tAlfa
#7. Validar hipotesis
abs(t0)> tAlfa
