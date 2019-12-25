# Prepare a scatter plot of the data
x=scan()
1: 0 1 2 3 4 5 6 7 8 9
11:
  Read 10 items
y=scan()
1: 98 135 162 178 221 232 283 300 374 395
11:
  Read 10 items
plot(x,y)
plot(x,y,main="scatter plot",col=56,col.main=23,pch=17,col.lab=34)
plot(x,y,main="scatter plot",col=56,col.main=32,pch=17,col.lab=34)
plot(x,y,main="scatter plot",col=56,col.main=4,pch=17,col.lab=34)

# State the estimated regression line for the data and add it to the scatter plot.
model=lm(y~x)
model
Call:
  lm(formula = y ~ x)
Coefficients:
  (Intercept) x
91.56 32.50
  𝒚^ = 𝟗𝟏. 𝟓𝟔 + 𝟑𝟐. 𝟓𝟎𝒙
abline(model,col=2,lwd=2)


# Use the model to predict the sales in the 10th year (i.e. For x=10). Also provide the 95% and
# 90% confidence interval for the predicted value.
predict(model,data.frame(x=10))
1
416.5333
predict(model,data.frame(x=10),interval = "conf")
fit lwr upr
1 416.5333 392.9089 440.1578
fit lwr upr
(416.5333 392.9089 440.1578)

#This is the 95% confidence interval.
predict(model,data.frame(x=10),interval = "conf",level = 0.9)
fit lwr upr
1 416.5333 397.4827 435.5839
fit lwr upr
(416.5333 397.4827 435.5839)



# This is the 90% confidence interval. 