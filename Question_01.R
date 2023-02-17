##############################
## Questao 1: Fa?a o codigo abaixo funcionar corretamente
##############################

#################################
# data
iris_data <- iris[,1:4]
iris_data
# View(iris_data)
#################################
# histograma
hist(iris_data$Petal.Length)

# qqplot
qqnorm(iris_data$Petal.Length, pch = 1, frame = FALSE); qqline(iris_data$Petal.Length, col = "steelblue", lwd = 2)

## shapiro test 
resultado_shapiro = shapiro.test(iris_data$Petal.Length)

## Explore a variavel "resultado_shapiro" e substitua o "??" pela variavel referente ao p-value
p_valor = resultado_shapiro$p.value
  
# p-value ? maior que 0.05? FALSE
p_valor > 0.05 #FALSE

#################################
# histograma
hist(iris_data$Petal.Width)

# qqplot
qqnorm(iris_data$Petal.Width, pch=1, frame=FALSE); qqline(iris_data$Petal.Width, col = "steelblue", lwd = 2)

## shapiro test 
resultado_shapiro = shapiro.test(iris_data$Petal.Width)

## Explore a variavel "resultado_shapiro" e substitua o "??" pela variavel referente ao p-value
p_valor = resultado_shapiro$p.value
  
# p-value ? maior que 0.05? FALSE
p_valor > 0.05 #FALSE
