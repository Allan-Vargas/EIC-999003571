#tarea 2
#Alumnos de grupo/carnet
#Allan Antonio Vargas Escobar - 999003571
#Ilving Omark Velasquez Mazariegos - 999003700

#ejercicio 1 
#1.	Identificar las variables necesarias para el experimento (n, p, q), donde la probabilidad de éxito (p) es el número de pacientes que sobreviven.
n=16; 
p=0.4; 
x=0:n; 
prob=dbinom(x,n,p);
prob
#Graficar la distribución binomial de la muestra donde size=16, n  y prob
barplot(prob, main = "Sobrevivientes meningitis por salmonella")

#Probabilidad de que sobrevivan más de la mitad de los pacientes (P[X>0) = 1-P[X<=8])
pbinom(8, 16, 0.4, lower.tail=FALSE)





#ejercicio 2
#1.	Identificar las variables para el experimento y el vector inicial (0:1, con un rango de 0.01), N y DS
x = seq(0, 1, by = .01)
x
media<- mean(x)
desviacion <- sd(x)

mean(x)
sd(x)
valores <- dnorm(x, media, desviacion)
valores
#Graficar la distribución normal de la muestra donde n y ds se definen en el punto 1. 
plot(x, valores, type="l", main="Distribución normal", xlab="Valores X", ylab="concentración plomo")

#Una concentración superior o igual a 0.6 partes por millón (x>=0.6) se considera extremadamente alta 
pnorm(0.6,0.25,.11)

1-pnorm(0.6,0.25,.11)


#Obtener la probabilidad de que la concentración en plomo, en partes por millón, de un individuo sea inferior a 0.15 (x<=0.15)
pnorm(0.15, 0.25, .11)
#Determinar la concentración mínima del 30% de los individuos con más concentración (p=0.30)
dnorm(0.30, 0.25, 0.11)





#ejercicio 3
#Identificar las variables para el experimento (λ) y el vector inicial (0:5) 
lambda=5
xpoisson= 1:24
distpoison <- dpois(xpoisson, lambda)
distpoison
dpois(0:5,5)
#Identificar las variables para el experimento (λ) y el vector inicial (0:5) 
ppois(4,5)
#Se produzcan al menos cuatro capturas en un día
dpois(4,5)
#4.	Se produzcan menos de cuatro capturas en un día
ppois(3,5)

#gráfica poisson
plot (xpoisson, distpoison, type="h", col=c("orange", "yellow", "gray"), xlab = xpoisson)
barplot(distpoison)
