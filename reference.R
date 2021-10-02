# Function calling
# rnorm will return random normal distribution with given sample size (optional to provide mean and s.d.)
x <- rnorm(100, mean=21, sd=2.1) 

# Support functions
help(rnorm)
example(rnorm)
# Launch HTML helper
help.start()

# Vectors

# initializing with given vector components
vec1 = c(1,2,3,4,5)
vec1[5]

# Using sequence
vec2 = seq(from=0, to=1, by=0.25)
vec2
# sum
sum(vec2)
# addition
vec1 + vec2


# Matrices

mat=matrix(data=c(9,2,3,4,5,6),ncol=3)
mat[1,2]
mat[2,]
mean(mat)


# Data frames

t = data.frame(x = c(11,12,14), y = c(19,20,21), z = c(10,9,7))

mean(t$z)
mean(t[["z"]]) ## same

# Lists

L = list(one=1, two=c(1,2), five=seq(0, 1, length=5))
names(L)
L$five + 10

# Graphs

plot(rnorm(100), type="l", col="gold")
hist(rnorm(100))

x1 = rnorm(100)
x2 = rnorm(100)
x3 = rnorm(100)
t = data.frame(a = x1, b = x1+x2, c = x1+x2+x3)

plot(t$a, type="l", ylim=range(t), lwd=3, col=rgb(1,0,0,0.3))
lines(t$b, type="s", lwd=2, col=rgb(0.3,0.4,0.3,0.9))
points(t$c, pch=20, cex=4, col=rgb(0,0,1,0.3))
