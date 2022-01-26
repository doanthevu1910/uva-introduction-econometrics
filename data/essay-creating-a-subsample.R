setwd("D:/UvA/Year 1/Block 3/Introduction Econometrics and Actuarial Science/Skills/Essay/Data")

getwd()

rm(list = ls())

load("D:/UvA/Year 1/Block 3/Introduction Econometrics and Actuarial Science/Skills/Essay/Data/Complete-dataset.Rdata")

nt = 3250

n = 3000

rs = round(1000000000*runif(1), d = 0)

set.seed(rs, kind = NULL)

print(rs)

iid = sample(1:nt, n, replace = FALSE)

dat = Complete_dataset[iid, ]

save(dat, file = "D:/UvA/Year 1/Block 3/Introduction Econometrics and Actuarial Science/Skills/Essay/Data/mydata.rdata")

View(dat)

summary(dat)