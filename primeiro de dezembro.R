rnorm(25, 0, 1)
rnorm(5, 0, 1)
rnorm(15, 0, 1)
rnorm(5, 0, 100)

# manoel ----------------------
set.seed(325)
rnorm(5, 0, 1)


set.seed(189)
rnorm(5, 0, 1)


f(t) = a - (a - b/ 1 + k)
# hhhahah -------------
set.seed(254)

t <- (1: 20)
t

a = 90
b = 0.20
k = 0.007264
d = 2

mm<- function(t, a, b, k, d) {a - (a-b)/ (1 + (k*t)^d)}
w= mm( t, a= 90, b = 0.20, k = 0.007264, d = 2)  
plot(t, w, type = "l")

rnorm(10, w, t)


df <- data.frame(w, t)
df

apply(df, 1, function(x){rnorm(10, x[1], x[1]/x[2])})

rep(1:20, each = 10)

bio <-data.frame( sem = rep(1:20, each = 10),
  peso = c(apply(df, 1, function(x){rnorm(10, x[1], x[1]/x[2])})))

plot(x = rep(1:20, each = 10), y = c(apply(df, 1, function(x){rnorm(10, x[1], x[1]/x[2])})))
plot

