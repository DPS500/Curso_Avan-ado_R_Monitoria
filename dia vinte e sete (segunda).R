# data = 27/11 
# Autor: Manoel Lucas

#anscombe ---------

data(anscombe)

dados <- anscombe
str(dados)

plot(dados$x1, dados$y1)

plot(y1 ~ x1, data = dados)

plot(dados$x1)

plot(as.factor(dados$x1))

plot(as.factor(dados$x1), dados$y1)

plot(dados)

ls(par())

plot(dados$x1, dados$y1,
     xlab = "Variável Preditora", ylab = "Variável Resposta",
     main = "Anscombe")

plot(dados$x1, dados$y1, 
     xlab = "Variável Preditora", ylab = "Variável Resposta",
     main = "Anscombe", 
     las = 1,
     xlim = c(0, 16), ylim= c(0, 12), 
     xaxs = "i", yaxs = "i", 
     cex.axis = 1)



plot(dados$x1, dados$y1, 
     xlab = "Variável Preditora", ylab = "Variável Resposta",
     main = "Anscombe", 
     las = 1,
     xlim = c(0, 16), ylim= c(0, 12), 
     xaxs = "i", yaxs = "i", 
     cex.axis = 1, 
     xaxp = c(0, 16, 8), yaxp = c(0, 12, 6), 
     tck = 0.01,
     mgp = c(1.5, 0.5, 0))

plot(dados$x1, dados$y1)

plot(dados$x1, dados$y1, type = "l")

plot(dados$x1, dados$y1, bty = "o")

plot( dados$x1, dados$y1, type = "n")
      points( x = dados$x1, y = dados$y1, 
             pch = 20,
             cex = 2)

plot( dados$x1, dados$y1, type = "n", xlab = "", ylab = "",
      xaxt = "n", yaxt = "n", bty = "n")
points(x = dados$x1, y = dados$y1, pch = 23, 
       cex = 1.3)
box(bty = "l")
axis(side = 1)
axis(side = 2, 
     las = 1)






# lty altera o tipo da linha, 0 = sem linha, 1 = linha sólida, 2= linha pontilhada 3 = linha  tracejada, 5 = linha... 6 = linha ----- 
# lwd alterar espessura da linha --------

mod <- lm(dados$y1, dados$x1)

call:
lm(formula = dados$y1 ~ dados$x1)

coefficients: 
  lines(x = dados$x1, y = ypredito,
       lty = 1,
       lwd = 3)


# Modificação de dados --------
mod <- lm(dados$y1 ~ dados$x1)
ypredito <- predict(mod)
ypredito

plot( dados$x1, dados$y1, type = "n", xlab = "", ylab = "",
      xaxt = "n", yaxt = "n", bty = "n")
points(x = dados$x1, y = dados$y1, pch = 23, 
       cex = 1.3)
box(bty = "l")
axis(side = 1)
axis(side = 2, 
     las = 1)

lines( x = dados$x1, y = ypredito,
       lty = 1,
       lwd = 3)

legend (x = "topleft",
        legend = " Refressão Linear",
        lty = 1,
        lwd = 3,
        bty = "n")
# Adicionar uma linha simples -------

  plot( dados$x1, dados$y1, type = "n", xlab = "", ylab = "",
      xaxt = "n", yaxt = "n", bty = "n")
points(x = dados$x1, y = dados$y1, pch = 23, 
       cex = 1.3)
box(bty = "l")
axis(side = 1)
axis(side = 2, 
     las = 1)

lines( x = dados$x1, y = ypredito,
       lty = 1,
       lwd = 3)

legend (x = "topleft",
        legend = " Refressão Linear",
        lty = 1,
        lwd = 3,
        bty = "n")

abline(h = 8, v = 10, 
       lty = 15)

#Adicionar setas ------- 

arrows( x0 = 8.5, y0 = 9.5,
        x1 = 9.9, y1 = 8.2,
        length = 0.2)


# Adicionar legenda na seta ----
text(x = 8.5, y = 9.8,
     labels = "Média")


# Gráfico de barras ------- 

install.packages("ade4")

require(ade4)
data(tortues)
str(tortues)

dados <- rbind(tapply(tortues[, 1], tortues [, 4], mean),
               tapply(tortues[, 2], tortues[, 4], mean),
               tapply(tortues[, 1], tortues[, 4], mean))


rownames(dados) <- names(tortues) [1: 3]

dados #Média por gênero --------------


dados_sd <- rbind(tapply(tortues[, 1], tortues [, 4], sd),
               tapply(tortues[, 2], tortues[, 4], sd),
               tapply(tortues[, 3], tortues[, 4], sd))


rownames(dados_sd) <- names(tortues) [1: 3]

dados_sd


#Barplot ----------

barplot(dados, beside = TRUE, 
        width = 0.7, ylim = c(0, 180),
        las = 1,
        legend = c("Comprimento", "Largura", "Altura"),
        args.legend = list( x = "top", bty = "n", ncol = 3),
        names = c("Machos", "Fêmeas"),
        main = "Tartarugas")
# adicionar linha com o DP --------- 

install.packages("plotrix")
require(plotrix)
xx <- barplot(dados, beside = TRUE, 
              width = 0.7, ylim = c(0, 180),
              las = 1,
              legend = c("Comprimento", "Largura", "Altura"),
              args.legend = list( x = "top", bty = "n", ncol = 3),
              names = c("Machos", "Fêmeas"),
              main = "Tartarugas", xaxs = "r")
xx
plotCI( x = xx, y = dados, uiw = dados_sd, liw = 0, 
        add = TRUE, 
        pch = NA)

#Histogramas -------

data(faithful)
dados1 <- faithful

hist( dados1$waiting, 
      las = 1,
      col = "black", border = "white", breaks = c(40, 50, 60, 70, 80, 90, 100),
      xlab = "Tempo de espera (min)", ylab= "Frequência",
      main = "")

                                            
hist( dados1$waiting, prob = TRUE,
      las = 1,
      col = "white", border = "grey", 
      xlab = "Tempo de espera (min)", ylab= "Frequência",
      main = "Old Faithful")
lines( density(dados1$waiting),
       lwd = 4)
box(bty = "l")

# Boxplot ------------

data(PlantGrowth)
dados2<- PlantGrowth
mod <- lm(weight ~ group, data = dados2) # Anova (análise estatística)

summary.aov(mod)

TukeyHSD(aov(weight ~ group, data = dados2)) #Tukey

boxplot(weight ~ group, data = dados2, 
        xlab = "Peso seco", ylab = "Tratamentos",
        main = "Rendimento", 
        boxwex = 0.7,
        las = 1,
        ylim = c(3.5, 6.5))


#01/12-----------
set.seed(325)
rnorm(25, 0, 1)
