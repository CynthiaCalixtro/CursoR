N <- 10000
n <- 5
x <- rhyper(n,300,100,100) #help(rhyper)
hist(x,
	xlim = c(min(x),max(x)),probability = T, nclass = max(x)-min(x)+1,
	col = 'yellow',
	ylab="Densidad",
	main = 'Distribucion geometrica, n = 400, p=.75, k =100')
lines(density(x,bw=1),col='red',lwd=3)
