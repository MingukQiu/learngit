Leukemia <- read.table('Leukemia.txt',head=T)
attach(Leukemia)

Leukemia.add <- glm(Y~X1+X2+X3,family=binomial,data = Leukemia)
summary(Leukemia.add)


# options(contrasts = c("contr.treatment","contr.poly"))
# 
# r <- c(10,17,12,7,23,22,29,29,23)
# n <- c(31,30,31,27,26,30,31,30,30)
# logconc <- c(2.68,2.76,2.82,2.90,3.02,3.04,3.13,3.2,3.21)
# counts <- cbind(r,n-r)
# result <- glm(counts~logconc,family=binomial("logit"))
# summary(result,,correlation=T,symbolic.cor=T)
# result$coefficients

