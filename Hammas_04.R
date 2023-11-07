# 16.02.2023
# Hanna Mangeloja
# Ladataan kirjastot
library(haven)
library(stargazer)

setwd("U:/Tekstit/Tutkimus/Terveystaloustiede/Hammaslaaketiede")

# Ladataan data
Dental_data_01 <- read_dta("Documents/Esa/Teksti/Tutkimus/Terveystalous/Hammas/Dental_data_03.dta")
attach(Dental_data_01)
# Mallit esiimoidaan
Malli01 <- lm(DMFT ~ hdi + alcohol + smokers + sugar + growthConst + urban)
Malli02 <- lm(DMFT ~ hdi + smokers + sugar  + growthConst + urban)
Malli03 <- lm(DMFT ~ hdi + smokers + sugar + education + urban)
Malli04 <- lm(DMFT ~ hdi + smokers + sugar + urban)
Malli05 <- lm(DMFT ~ hdi + sugar + urban)

# Mallin muuttujat logaritmimuodossa
# Nämä parhaat mallivariantit, 16.02.2023
attach(Dental_data_03)

Malli01 <- lm(log(DMFT) ~ log(lifeExp) + log(dentists) + log(unemp) + growthCap + log(education)  + log(sugar) + log(smokers) + log(hdi) + log(urban))
Malli02 <- lm(log(DMFT) ~ log(unemp) + growthCap   + log(sugar)  + log(smokers) + log(hdi) + log(urban))
Malli03 <- lm(log(DMFT) ~ growthCap  + log(education) + log(sugar) + log(smokers) + log(hdi) + log(urban))
Malli04 <- lm(log(DMFT) ~ log(sugar) + log(smokers) + log(hdi) + log(urban))
Malli05 <- lm(log(DMFT) ~ log(smokers) + log(hdi) + log(urban))


# Malli06 <- lm(log(DMFT) ~ log(hdi) + log(sugar) + log(urban))

# tulosten taulukointi
stargazer(Malli01, Malli02, Malli03, Malli04, Malli05,  type = "html", out="tulos01.html")

stargazer(Malli01, Malli02, Malli03, Malli04, Malli05,  type = "text", out="tulos01.txt")

# Tämä tehdään vasta väikkäriin
# luetaan World data
Dental_data_05 <- read_dta("~/Tutkimukseni/Dental_data_World_05.dta")
attach(Dental_data_05)
