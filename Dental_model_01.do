/*
Caries tutkimus

14.02.2023

*/

use"/Users/esa/Documents/Esa/Teksti/Tutkimus/Terveystalous/Hammas/Dental_data_03.dta"

gen l

// Malli 1

reg DMFT hdi education dentists alcohol smokers sugar lifeExp unemp growthCap urban

// Malli 2

reg DMFT hdi education dentists alcohol smokers sugar lifeExp growthCap urban

// Malli 3

reg DMFT hdi education dentists alcohol smokers sugar growthCap urban

// Malli 4

reg DMFT hdi education alcohol smokers sugar urban


// Malli 5

reg DMFT hdi smokers sugar urban

// ajetaan malli log muuttujilla

gen lDMFT = log(DMFT)
gen lhdi = log(hdi)
gen leducation = log(education)
gen ldentists = log(dentists)
gen lalcohol = log(alcohol) 
gen lsmokers = log(smokers) 
gen lsugar = log(sugar) 
gen llifeExp = log(lifeExp) 
gen lunemp = log(unemp) 
gen lurban = log(urban)

// Malli 1

reg lDMFT llifeExp ldentists lunemp growthCap leducation lsugar lsmokers lhdi lurban

// Malli 2

reg lDMFT lunemp growthCap  leducation lsugar lsmokers  lhdi  lurban


// Malli 3

reg lDMFT growthCap  leducation lsugar lsmokers  lhdi  lurban



// Malli 4

reg lDMFT lsugar lsmokers  lhdi  lurban


// Malli 5

reg lDMFT lsmokers lhdi lurban

// Deskriptiivinen statistiikka helposti asdoc komennolla!

asdoc sum DMFT lifeExp dentists unemp growthCap education sugar smokers hdi urban , dec(2)

