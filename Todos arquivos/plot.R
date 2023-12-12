# data = 27/11
# Autor: Jeconias Freitas

# anscombe

data(anscombe)

dados <- anscombe
str(dados)

plot(dados$x1, dados$y1)

plot(y1 ~ x1, data = dados)

plot(dados$x1)

plot(as.factor(dados$x1))
plot(as.factor(dados$x1), dados$y1)


plot(dados$x2, dados$y3)

plot(dados)

ls(par())
plot(dados$x1, dados$y1,
     xlab = "Variável Preditora", ylab = "Variável resposta",
     main = "Anscombe")



# las - 
# xlim e ylim
#

plot(dados$x1, dados$y1, 
     xlab = "Variável Preditora", ylab = "Variável resposta",
     main = "Anscombe", las = 1, xlim = c(0, 16), ylim = c(0, 12),
     xaxs = "i", yaxs = "i", cex.axis = 1)

plot(dados$x1, dados$y1, 
     xlab = "Variável Preditora", ylab = "Variável resposta",
     main = "Anscombe", las = 1, xlim = c(0, 16), ylim = c(0, 12),
     xaxs = "i", yaxs = "i", cex.axis = 1,
     xaxp = c(0, 16,8), yaxp = c(0, 12, 6),
     tck = 0.01, mgp = c(1.5, 0.5, 0))

plot( dados$x1,dados$y1)

plot(dados$x1, dados$y1, type = "b")

plot(dados$x1, dados$y1, bty = "n")

plot(dados$x1, dados$y1, type = "n") 
     points(x = dados$x1, y = dados$y1, 
            pch = 23,
            cex = 1.3)

     
     plot(dados$x1, dados$y1, type = "n", xlab = "", ylab = "",
          xaxt = "n" , yaxt = "n", bty = "n")
points(x = dados$x1, y = dados$y1, pch = 23, cex = 1.3)
box(bty="l")

axis(side = 1)
axis(side = 2, las = 1)

# lty altera o tipo da linha, 0 = sem linha, 1 = linha sólida, 3 linha pontilhada, 4 pontilhada e tracejada, 5 linha com traço longo, 6 linha com traço duplo
# lwd Altera a espessura da linha


 mod <- lm(dados$x1 = dados$y1)

 call: 
   lm(formula = dados$y1 ~ dados$x1)
 coefficients: 
   
   
   plot(dados$x1, dados$y1, type = "n", xlab = "", ylab = "",
        xaxt = "n" , yaxt = "n", bty = "n")
 points(x = dados$x1, y = dados$y1, pch = 23, cex = 1.3)
 box(bty="l")
 
 axis(side = 1)
 axis(side = 2, 
      las = 1)
 
 # MODIFICAÇÃO DE DADOS ----
 
mod <- lm( dados$y1 ~ dados$x1)
 
 ypredito <- predict(mod)
 ypredito
 
 
 
 plot(dados$x1, dados$y1, type = "n", xlab = "", ylab = "",
      xaxt = "n" , yaxt = "n", bty = "n")
 points(x = dados$x1, y = dados$y1, pch = 23, cex = 1.3)
 box(bty="l")
 
 axis(side = 1)
 axis(side = 2, 
      las = 1)
 lines( x = dados$x1, y = ypredito,
        lts = 1,
        lwd = 3)
 
 # Adicionando legendas _____________
  # A função legend adiciona legenda ao gráfico.
 
 plot(dados$x1, dados$y1, type = "n", xlab = "", ylab = "",
      xaxt = "n" , yaxt = "n", bty = "n")
 points(x = dados$x1, y = dados$y1, pch = 23, cex = 1.3)
 box(bty="l")
 
 axis(side = 1)
 axis(side = 2, 
      las = 1)
 lines( x = dados$x1, y = ypredito,
        lts = 1,
        lwd = 3)
 legend ( x = "topleft", legend = "Regressão linear", 
          lty = 1,
          lwd = 3,
          bty = "n")

 # Adicionar uma linha simples ----
 
 plot(dados$x1, dados$y1, type = "n", xlab = "", ylab = "",
      xaxt = "n" , yaxt = "n", bty = "n")
 points(x = dados$x1, y = dados$y1, pch = 23, cex = 1.3)
 box(bty="l")
 
 axis(side = 1)
 axis(side = 2, 
      las = 1)
 lines( x = dados$x1, y = ypredito,
        lts = 1,
        lwd = 3)
 legend ( x = "topleft", legend = "Regressão linear", 
          lty = 1,
          lwd = 3,
          bty = "n")
 abline(h = 8, v = 10,
        lty = 15)

 # adicionar cetas
 arrows(x0 = 8.5, y0 = 9.5,
        x1 = 9.9, y1 = 8.1,
        length = 0.1)

 # Adicionar legenda na seta
 
 text(x = 8.5, y = 9.8,
      labels = "Média")

 # Gráfico de barras ----
 
 install.packages("ade4")

 require(ade4) 
data(tortues) 
str(tortues)

  dados <- rbind(tapply(tortues[, 1], tortues[, 4], mean),
                 tapply(tortues[, 2], tortues[, 4], mean),
                 tapply(tortues[, 1], tortues[, 4], mean))
  
rownames(dados) <- names(tortues) [1:3]

dados # Média por gênero

dados_sd <- rbind(tapply(tortues[, 1], tortues[, 4], sd),
               tapply(tortues[, 2], tortues[, 4], sd),
               tapply(tortues[, 3], tortues[, 4], sd))
  
rownames(dados_sd) <- names(tortues) [1:3]

dados_sd# barplot ----

barplot(dados, beside = TRUE,
        width = 0.7, ylim = c(0, 180), 
        las = 1, 
        legend = c("Comprimento", "Largura", "Altura"),
        args.legend = list( x = "top", bty = "n", ncol = 3),
        name = c("Machos", "Fêmeas"),
        main = "Tartarugas")

# Adicionar as linhas de desvio padrão


install.packages( "plotrix")
require(plotrix)
xx <- barplot(dados, beside = TRUE,
              width = 0.7, ylim = c(0, 180), 
              las = 1, 
              legend = c("Comprimento", "Largura", "Altura"),
              args.legend = list( x = "top", bty = "n", ncol = 3),
              name = c("Machos", "Fêmeas"),
              main = "Tartarugas", xaxs = "r")

plotCI( x = xx, y = dados, 
        uiw = dados_sd, 
        liw = 0, 
       add = TRUE,
       pch = NA)


plotCI(x = xx, y = dados, uiw = dados_sd, liw = 0, 
       add = TRUE,
       pch = NA)

# Histograma----
data(faithful)
dados1 <- faithful

hist( dados1$waiting,
      las = 1,
      col = 'black', border = "white", 
      breaks = c(40, 50, 60, 70, 80, 90, 100),
      xlab = "Tempo de espera (m)", ylab = "Frequência",
      main = "")


hist( dados1$waiting, prob = TRUE,
      las = 1,
      col = 'white', border = "grey", 
      
      xlab = "Tempo de espera (m)", ylab = "Frequência",
      main = "old Faithful")
lines( density(dados1$waiting),
       lwd = 4)
box (bty = "l")

# Boxplot----

data(PlantGrowth)
dados2 <- PlantGrowth

mod <- lm(weight ~ group, data = dados2) # anova  

summary.aov(mod)

TukeyHSD(aov(weight ~ group, data = dados2)) # Análise Tuk

boxplot (weight ~ group, data = dados2, 
         xlab = "Peso seco",
         ylab = " Tratamentos",
         main = "Rendimento",
         boxwex = 0.7,
         las = 1,
         ylim = c(3.5, 6.5),
         col = "black",
         border = "white",
         whiskcol = "black",
         staplecol = "black",
         outcol = "black",
         outpch = 19,
         boxwex = 0.4,
         name = c("Controle","T2", "T1"))



  