# Emma Ervasti
# syväri 13.09.2025
# Ladataan kirjastot
library(haven)
library(stargazer)

setwd("/Users/esa/Library/CloudStorage/OneDrive-Jyväskylänyliopisto/Tutkimus/Terveys/Hammaslaaketiede")

# Ladataan data
Dental_World_01 <- read_dta("Library/CloudStorage/OneDrive-Jyväskylänyliopisto/Tutkimus/Terveys/Hammaslaaketiede/Dental_World_01.dta")

attach(Dental_World_01)
# Mallit esiimoidaan
#Malli 1 : Perusmalli, kaikki mjat mukana
#Malli 2 : otetaan HDI pois, corr gdp:n kanssa
# Malli 3 : toba ja alco pois
#Malli 4 : sugr ja fluo  pois
#Malli 5 : dent pois ja korvataan BKT HDI-indeksillä
#Malli 6 : Kaikki merkitseviä
Malli01 <- lm(exp ~ car3 + dent + sugr + fluo + toba + alco + grw + gdp + old + hdi)
Malli02 <- lm(exp ~ car3 + dent + sugr + fluo + toba + alco + grw + gdp + old)
Malli03 <- lm(exp ~ car3 + dent  + sugr + fluo + grw + gdp + old)
Malli04 <- lm(exp ~ car3 + dent + grw + gdp + old)
Malli05 <- lm(exp ~ car3 + grw + old + hdi)
Malli06 <- lm(exp ~ car3 + gdp + old)

# tulosten taulukointi
stargazer(Malli01, Malli02, Malli03, Malli04, Malli05, Malli06, type = "html", out="emma00.html")
stargazer(Malli01, Malli02, Malli03, Malli04, Malli05, Malli06,  type = "text", out="emma00.txt")
