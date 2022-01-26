setwd("D:/UvA/Year 1/Block 3/Introduction Econometrics and Actuarial Science/Skills/Essay/Data")

getwd()

rm(list = ls())

load("D:/UvA/Year 1/Block 3/Introduction Econometrics and Actuarial Science/Skills/Essay/Data/mydata.Rdata")

#DATA SUBSETS

dat_male <- subset(dat, male == 1)

dat_female <- subset(dat, female == 1)

dat_gov <- subset(dat, catgov == 1)

dat_pri <- subset(dat, catpri == 1)

#MODEL 1

attach(dat)

l_earnings = log(earnings)

reg1 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc)

summary(reg1)

detach(dat)

##MODEL 1.1

attach(dat_male)

l_earnings = log(earnings)

reg1_1 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc)

summary(reg1_1)

detach(dat_male)

##MODEL 1.2

attach(dat_female)

l_earnings = log(earnings)

reg1_2 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc)

summary(reg1_2)

detach(dat_female)

##MODEL 1.3

attach(dat_gov)

l_earnings = log(earnings)

reg1_3 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc)

summary(reg1_3)

detach(dat_gov)

##MODEL 1.4

attach(dat_pri)

l_earnings = log(earnings)

reg1_4 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc)

summary(reg1_4)

detach(dat_pri)

#MODEL 2

attach(dat)

l_earnings = log(earnings)

reg2 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc + male + catgov)

summary(reg2)

detach(dat)

##MODEL 2.1

attach(dat_male)

l_earnings = log(earnings)

reg2_1 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc + male + catgov)

summary(reg2_1)

detach(dat_male)

##MODEL 2.2

attach(dat_female)

l_earnings = log(earnings)

reg2_2 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc + male + catgov)

summary(reg2_2)

detach(dat_female)

##MODEL 2.3

attach(dat_gov)

l_earnings = log(earnings)

reg2_3 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc + male + catgov)

summary(reg2_3)

detach(dat_gov)

##MODEL 2.4

attach(dat_pri)

l_earnings = log(earnings)

reg2_4 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc + male + catgov)

summary(reg2_4)

detach(dat_pri)

#MODEL 3

attach(dat)

malegov = male*catgov

l_earnings = log(earnings)

reg3 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc + malegov)

summary(reg3)

detach(dat)

##MODEL 3.1

attach(dat_male)

malegov = male*catgov

l_earnings = log(earnings)

reg3_1 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc + malegov)

summary(reg3_1)

detach(dat_male)

##MODEL 3.2

attach(dat_female)

malegov = male*catgov

l_earnings = log(earnings)

reg3_2 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc + malegov)

summary(reg3_2)

detach(dat_female)

##MODEL 3.3

attach(dat_gov)

malegov = male*catgov

l_earnings = log(earnings)

reg3_3 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc + malegov)

summary(reg3_3)

detach(dat_gov)

##MODEL 3.4

attach(dat_pri)

malegov = male*catgov

l_earnings = log(earnings)

reg3_4 <- lm(l_earnings ~ 1 + s + tenure + exper + asvabc + malegov)

summary(reg3_4)

detach(dat_pri)