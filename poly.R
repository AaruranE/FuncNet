library(polynom)
library(neuralnet)
library(tidyverse)

f <- function(x)
{
  3*x^2 - x - 1
}


dat <- data.frame(x=1:10, y=f(1:10))

net <- neuralnet(y~x, dat, hidden = 1)
print(net)
plot(net)

dat2 <- data.frame(x=-100:100, y=f(-100:100))
ggplot(dat2, aes(x=x,y=y)) + geom_line() + geom_point()
net2 <- neuralnet(y~x, dat2, hidden = 1, stepmax = 2e5)

x = seq(0.77,1,0.01)
x
y = f(x)
y
