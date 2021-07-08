x <- seq(0,3.49,0.01)
zd <- round(pnorm(x),5)
list_name <- list(seq(0,0.09,0.01),seq(0,0.34,0.1))
Zscore <- matrix(zd,nrow = 10 ,ncol = 35 ,dimname = list_name);
t(Zscore)
