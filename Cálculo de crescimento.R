set.seed(254)

t <- c(1:20)
t
a = c(90)
a
b = c(0.20)
b
k = c(72.64/10000)

k
d = c(2.00)
d
mm <- function(t ,a ,b ,k , d){a - (a -b)/(1 + (k*t)^d)}
mm
mm(t ,a ,b ,k , d)
w = mm(t ,a ,b ,k , d)
plot(t, w, type = "l")

DF <- data.frame(w, t)
DF

ma<-apply(DF, 1, function(x){rnorm(10, x[1], x[1]/x[2])})

DF1 <- data.frame(
  semanas = rep(1:20, each = 10),
  peso = c(ma)
)
plot(DF1)



