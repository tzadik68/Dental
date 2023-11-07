/*
Caries tutkimus

14.02.2023

*/

use"/Users/esa/Documents/Esa/Teksti/Tutkimus/Terveystalous/Hammas/Dental_data_03.dta"

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


