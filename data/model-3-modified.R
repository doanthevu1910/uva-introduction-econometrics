setwd("D:/UvA/Year 1/Block 3/Introduction Econometrics and Actuarial Science/Skills/Essay/Data")

getwd()

rm(list = ls())

load("D:/UvA/Year 1/Block 3/Introduction Econometrics and Actuarial Science/Skills/Essay/Data/mydata.Rdata")

#MODEL 1

attach(dat)

l_earnings = log(earnings)

reg1 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc + catgov)

summary(reg1)

detach(dat)

#MODEL 3
attach(dat)

malegov = male*catgov

l_earnings = log(earnings)

reg3_modded <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc + catgov + male + malegov)

summary(reg3_modded)

detach(dat)

dat_male_public <- subset(dat, male == 1 & catgov == 1)

dat_male_pri <- subset(dat, male == 1 & catpri == 1)