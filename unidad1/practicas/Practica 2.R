# Funcion 1
 n <- 10 + 2
n
[1] 12
n <-3 + rnorm(1)
n
[1] 4.0876

# Funcion 2
name <-"Carmen"; n1 <- 10; n2 <- 100; m <- 0.5
ls ()

# Funcion 3
ls.str()
  
# funcion 4
seq(1, 5, 0.5)

#funcion 5
rep (1, 30)

# funcion 6
sequence(4:5)
sequence(c(10,5))

# funcion 7
gl (3, 5)
gl(3, 5, lenght =30)
gl (2, 6, labels =c("Macho", "Hembra"))
gl (2, 10)
gl (2, 1, length = 20)

# funcion 8
expand.grid(a=c(60,80), p=c(100, 300), sexo=c("Macho", "Hembra"))

# funcion 9
ff <- factor(c(2, 4), levels=2:5)
ff
levels(ff)

# funcion 10
ts(1:10, start = 1959)
ts(1:10, frequency = 4, start = c(1959, 2))
ts(matrix(rpois(36, 5), 12, 3), start=c(1961, 1), frequency=12)

# funcion 11
x <- 3; y <- 2.5; z <- 1
exp1 <- expression(x / (y + exp(z)))
exp1
eval(exp1)

# funcion 12
m1 <- matrix(1, nr = 2, nc = 2)
m2 <- matrix(2, nr = 2, nc = 2)
rbind(m1, m2)
cbind(m1, m2)

# funcion 13
diag(m1)
diag(rbind(m1, m2) %*% cbind(m1, m2))
diag(m1) <- 10
m1
diag(3)
v <- c(10, 20, 30)
diag(v)
diag(2.1, nr = 3, nc = 5)

# Funcion 14
print (iris)

# funcion 15
plot (iris) 

# funcion 16
nrow (iris)

# funcion 17
colnames (iris)

# funcion 18
ncol(iris)

# funcion 19
summary(iris)

# funcion 20
log10 (3)