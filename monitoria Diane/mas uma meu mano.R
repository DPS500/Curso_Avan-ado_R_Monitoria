set.seed(254)
t <- (1:20)
t

# W=f(t)= a - a-b/1+(k.t)^d

a= 90
b= 0.20
k= 0.007264
d= 2

mm <- function(t,a,b,k,d) {a- (a-b)/(1+(k*t)^d)}
w = mm (t, a, b, k, d)
plot(t,w,type = "l")

# rnorm <- (10,w,t)

DF <- data.frame(w,t)
dd=apply(DF, 1, function(x){rnorm(10,x[1],x[1]/x[2])})

rep(1:21, each = 10)
 Bill <- data.frame(
  Semana = rep(1:20, each = 10),
    Peso = c(dd)

    
)
# plot(x,y)

# semana= rep(1:20, each = 10)
# peso= c(dd)

plot(Bill$Semana,Bill$Peso)

