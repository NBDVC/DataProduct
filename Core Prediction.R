library(caret)
data(mtcars)
View(mtcars)
mtcars$ID<-1:32
str(mtcars)

RF<-train(ID~., meth="rf", data=mtcars, importance = TRUE)
testing<-apply(mtcars, 2, FUN=median)
Cnames<-names(testing)
testing<-matrix(testing, nrow=1, ncol=12)
testing<-data.frame(testing)
colnames(testing)<-Cnames

rownames(mtcars[predict(RF, newdata=testing),])
testing[,2]<-4
rownames(mtcars[predict(RF, newdata=testing),])
testing[,2]<-8
rownames(mtcars[predict(RF, newdata=testing),])