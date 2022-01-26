setwd("D:/UvA/Year 1/Block 3/Introduction Econometrics and Actuarial Science/Skills/Essay/Data")

getwd()

rm(list = ls())

dat <- load("D:/UvA/Year 1/Block 3/Introduction Econometrics and Actuarial Science/Skills/Essay/Data/mydata.Rdata")

View(dat)

#FOR ALL
attach(dat)

sum(male)

sum(female)

summary(dat[, "earnings"]); sd(dat[,"earnings"])

summary(dat[, "s"]); sd(dat[,"s"])

summary(dat[, "tenure"]); sd(dat[,"tenure"])

summary(dat[, "exper"]); sd(dat[,"exper"])

summary(dat[, "asvabc"]); sd(dat[,"asvabc"])

#SUBSET 1: FOR MALE
dat_male <- subset(dat, male == 1)

View(dat_male)

sum(dat_male[, "male"])

summary(dat_male[, "earnings"]); sd(dat_male[,"earnings"])

summary(dat_male[, "s"]); sd(dat_male[,"s"])

summary(dat_male[, "tenure"]); sd(dat_male[,"tenure"])

summary(dat_male[, "exper"]); sd(dat_male[,"exper"])

summary(dat_male[, "asvabc"]); sd(dat_male[,"asvabc"])

#SUBSET 2: FOR FEMALE
dat_female <- subset(dat, female == 1)

sum(dat_female[, "female"])

summary(dat_female[, "earnings"]); sd(dat_female[,"earnings"])

summary(dat_female[, "s"]); sd(dat_female[,"s"])

summary(dat_female[, "tenure"]); sd(dat_female[,"tenure"])

summary(dat_female[, "exper"]); sd(dat_female[,"exper"])

summary(dat_female[, "asvabc"]); sd(dat_female[,"asvabc"])

#SUBSET 3: FOR PUBLIC
sum(catgov)

sum(catpri)

sum(catse)

dat_gov <- subset(dat, catgov == 1)

summary(dat_gov[, "earnings"]); sd(dat_gov[,"earnings"])

summary(dat_gov[, "s"]); sd(dat_gov[,"s"])

summary(dat_gov[, "tenure"]); sd(dat_gov[,"tenure"])

summary(dat_gov[, "exper"]); sd(dat_gov[,"exper"])

summary(dat_gov[, "asvabc"]); sd(dat_gov[,"asvabc"])

#SUBSET 4: FOR PRIVATE

dat_pri <- subset(dat, catpri == 1)

summary(dat_pri[, "earnings"]); sd(dat_pri[,"earnings"])

summary(dat_pri[, "s"]); sd(dat_pri[,"s"])

summary(dat_pri[, "tenure"]); sd(dat_pri[,"tenure"])

summary(dat_pri[, "exper"]); sd(dat_pri[,"exper"])

summary(dat_pri[, "asvabc"]); sd(dat_pri[,"asvabc"])

#SUBSET 5: MALE, PUBLIC

dat_male_gov <- subset(dat, male == 1 & catgov == 1)

sum(dat_male_gov[, "male"])

summary(dat_male_gov[, "earnings"]); sd(dat_male_gov[,"earnings"])

summary(dat_male_gov[, "s"]); sd(dat_male_gov[,"s"])

summary(dat_male_gov[, "tenure"]); sd(dat_male_gov[,"tenure"])

summary(dat_male_gov[, "exper"]); sd(dat_male_gov[,"exper"])

summary(dat_male_gov[, "asvabc"]); sd(dat_male_gov[,"asvabc"])

#SUBSET 6: FEMALE, PUBLIC

dat_female_gov <- subset(dat, female == 1 & catgov == 1)

sum(dat_female_gov[, "female"])

summary(dat_female_gov[, "earnings"]); sd(dat_female_gov[,"earnings"])

summary(dat_female_gov[, "s"]); sd(dat_female_gov[,"s"])

summary(dat_female_gov[, "tenure"]); sd(dat_female_gov[,"tenure"])

summary(dat_female_gov[, "exper"]); sd(dat_female_gov[,"exper"])

summary(dat_female_gov[, "asvabc"]); sd(dat_female_gov[,"asvabc"])

#SUBSET 7: MALE, PRIVATE

dat_male_pri <- subset(dat, male == 1 & catpri == 1)

sum(dat_male_pri[, "male"])

summary(dat_male_pri[, "earnings"]); sd(dat_male_pri[,"earnings"])

summary(dat_male_pri[, "s"]); sd(dat_male_pri[,"s"])

summary(dat_male_pri[, "tenure"]); sd(dat_male_pri[,"tenure"])

summary(dat_male_pri[, "exper"]); sd(dat_male_pri[,"exper"])

summary(dat_male_pri[, "asvabc"]); sd(dat_male_pri[,"asvabc"])

#SUBSET 8: FEMALE, PRIVATE

dat_female_pri <- subset(dat, female == 1 & catpri == 1)

sum(dat_female_pri[, "female"])

summary(dat_female_pri[, "earnings"]); sd(dat_female_pri[,"earnings"])

summary(dat_female_pri[, "s"]); sd(dat_female_pri[,"s"])

summary(dat_female_pri[, "tenure"]); sd(dat_female_pri[,"tenure"])

summary(dat_female_pri[, "exper"]); sd(dat_female_pri[,"exper"])

summary(dat_female_pri[, "asvabc"]); sd(dat_female_pri[,"asvabc"])
