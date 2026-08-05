df<-iris
x<-df$Sepal.Length

df$Sepal.Length<-as.numeric(df$Sepal.Length)


hist(
  x= df$Sepal.Length,
  main = "Sepal Length distribution",
  xlab = "Values"
)
mean(x)
sd(x)
min(x)

summary(df)
