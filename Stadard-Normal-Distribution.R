curve(dnorm(x,0,1),xlim=c(-3,3),main="Standard Normal Distribution
      showing 5% rejection region for a 2-tailed test",
      xlab = "Standard Deviations from Mean",
      ylab = "Probability density",col="blue",lwd=2.5)

px <- c(-3,seq(-3,-2,0.01),-2)
py <- c(0,dnorm(seq(-3,-2,0.01)),0)
polygon(px,py,col="orange")

px2 <- c(2,seq(2,3,0.01),3)
py2 <- c(0,dnorm(seq(2,3,0.01)),0)
polygon(px2,py2,col="orange")

Arrows(-2.5,0.15,-2.3,0.02,arr.type="triangle",lwd=2)
text(-2.5,0.17,expression(alpha/2),col="orange",cex=2)

Arrows(1.3,0.3,0.8,0.18,arr.type="triangle",lwd=2)
text(1.4,0.32,expression(1-alpha),cex=2)

Arrows(2.2,0.13,2.2,0.035,arr.type="triangle",lwd=2)
text(2.2,0.15,expression(alpha/2),col="orange",cex=2)
