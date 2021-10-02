# our population is normally distributed with u=51 sd = 3.4

oneSample= rnorm(50,51,3.4)

sampleMean = mean(oneSample)

mean_array <- c();

for(i in 1:100){
  mean_array[i]<-mean(rnorm(50,51,3.4))
}

print(length(mean_array))

print(mean(mean_array))
print(sd(mean_array))

hist(mean_array)

x <- seq(0,100,by=0.5)
y <- dnorm(x,51,3.4)

plot(x,y)

# bootstrap

bootstrapSample <- sample(oneSample, size = 50, replace = TRUE)
bootstrapMeanArray <- c()
bootstrapSdArray <- c()
for (i in 1:100) {
  bootstrapSample <- sample(oneSample, size = 50, replace = TRUE)
  bootstrapMeanArray[i] <- mean(bootstrapSample)
  bootstrapSdArray[i] <- sd(bootstrapSample)
}

par(mfrow=c(3,1))
plot(x,y)
hist(mean_array)
hist(bootstrapMeanArray)

# install 'boot' package
