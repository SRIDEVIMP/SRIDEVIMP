#one-sample t-test


data <- c(22, 18, 25, 30, 28, 21, 24, 20, 26, 23)
pop_mean<-25
result<-t.test(data,mu=pop_mean)
result
cat("One-sample t-test:\n")
cat("Test statistic =", result$statistic, "\n")
cat("Degrees of freedom =", result$parameter, "\n")
cat("p-value =", result$p.value, "\n")
if (result$p.value < 0.05) {
  cat("The mean is significantly different from", pop_mean, "\n")
} else {
  cat("There is not enough evidence to reject the null hypothesis\n")
}







#paired-sample t-test


before <- c(25, 30, 22, 28, 20)
after <- c(30, 32, 24, 29, 21)
result<-t.test(before,after,paired = TRUE)
result
cat("Paired sample t-test:\n")
cat("Test statistic =", result$statistic, "\n")
cat("Degrees of freedom =", result$parameter, "\n")
cat("p-value =", result$p.value, "\n")
if (result$p.value < 0.05) {
  cat("There is a significant difference between before and after measurements\n")
} else {
  cat("There is not enough evidence to reject the null hypothesis\n")
}






#independent sample t-test


group1 <- c(25, 30, 22, 28, 20)
group2 <- c(30, 32, 24, 29, 21)
result<-t.test(group1,group2)
result
cat("Independent sample t-test:\n")
cat("Test statistic =", result$statistic, "\n")
cat("Degrees of freedom =", result$parameter, "\n")
cat("p-value =", result$p.value, "\n")
if (result$p.value < 0.05) {
  cat("There is a significant difference between two groups\n")
} else {
  cat("There is not enough evidence to reject the null hypothesis\n")
}