library(tidyr)
library(dplyr)
library(caret)

data<-read.csv("C:\\Users\\sride\\Downloads\\insurance.csv")
View(data)

x<-select(data,-c(charges))
y<-data$charges

set.seed(123)
index<-createDataPartition(y,p=0.7,list=FALSE)

X_train<-x[index,]
y_train<-y[index]
X_test<-x[-index,]
y_test<-y[-index]

model<- glm(y_train~.,data = X_train)

y_pred<-predict(model,newdata = X_test,type="response")
y_pred

conf_matrix<-table(y_pred<0.5,y_test)
conf_matrix

accuracy<-sum(diag(conf_matrix))/sum(conf_matrix)
accuracy
