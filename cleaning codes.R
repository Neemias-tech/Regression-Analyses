airlines <-read.csv("US Airline Flight Routes and Fares 1993-2024.csv")
dim(airlines)
head(airlines)
library(dplyr)
new_dataset <- airlines %>% filter((airport_1 == "DSM" | airport_1 == "MCI") & Year == 2023)
new_dataset <- new_dataset %>% select(-c(tbl,citymarketid_1,citymarketid_2,airportid_1,airportid_2,Geocoded_City1,Geocoded_City2,tbl1apk))

head(new_dataset)
dim(new_dataset)
library(writexl)

# Save the dataset as an Excel file
write_xlsx(new_dataset, "Regression_Analysis_dsm_mci_2023.xlsx")
