library("xlsx")
library("dplyr")
library("tidyr")

getwd()
list.files()


# LOAD ALL DATA -----------------------------------------------------------

turnover <- read.table("umsatzdaten_gekuerzt.csv", sep = ",", header = TRUE)

Date_DT <- read.table("Date.csv", sep = ";", header = TRUE)

#METEOROLOGY
Seasons_DT <- read.xlsx("Jahreszeiten_kalendarisch.xlsx", sheetIndex = 1)
weather_DT <- read.table("wetter.csv", sep = ",", header = TRUE)
monthly_average_temp_DT <- read.table("Temperaturdifferenz_und_Durchschnitt.csv", sep = ";", header = TRUE)

# EVENTS 
DigitaleWoche_DT <- read.xlsx("Digitale_Woche.xlsx", sheetIndex = 1)
Kielerwoche_DT <-read.table("kiwo.csv", sep = ";", header = TRUE)
Elections_DT <- read.xlsx("Wahlen.xlsx", sheetIndex = 1)
Christmasmarket_DT <- read.xlsx("Weihnachtsmarkt.xlsx", sheetIndex = 1)

# HOLIDAYS
Holidays_school_DT <- read.xlsx("Schulferien.xlsx", sheetIndex = 1)
Holidays_univer_DT <- read.xlsx("Mappe_CAU_Semesterferien.xlsx", sheetIndex = 1)

Holidays_germany_DT <- read.table("Feiertage.csv", sep = ";", header = TRUE)

# GERMAN ECONOMY
Unemployed_DT <- read.table("Arbeitslosigkeit_nach_Datum.csv", sep = ";", header = TRUE)
Population_DT <- read.xlsx("Population_Kiel.xlsx", sheetIndex = 1)


mod1 <- lm(price~bathrooms, house_pricing_train)
summary(mod1)
glance(mod1)
rbind(glance(mod1), glance(mod2))

