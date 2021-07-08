set.seed(123)
m0 <- 25
s0 <- sqrt(9)
n1 <- 60
num <- 0

plot(NULL,xlim = c(23.5,26.5),ylim = c(0,100))
abline(v = m0,col ="blue")

for(i in 1:100){
  x1 = rnorm(n1,m0,s0)
  test1 = t.test(x1,conf.level = 0.95)$conf.int
  segments(test1[1],i,test1[2],i,col = "black")

  mx <- as.numeric(max(test1))
  mn <- as.numeric(min(test1))
  if(mx < m0 || mn > m0){
    seg <- segments(mn,i,mx,i,col="red");seg
    num <-  num+1
  }
}
cat("The number that dropped out the average : ",num)
