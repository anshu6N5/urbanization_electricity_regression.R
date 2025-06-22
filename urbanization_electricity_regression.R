install.packages("MASS")
# loading of necessary libraries 
library(tidyverse)
library(readr)
library(janitor)
library(WDI)
library(ggplot2)

# Relationship Between Urban Population (% of total) and Access to Electricity (% of population) in India.

#search the indicators for the project.
WDIsearch("Access to Electricity")
WDIsearch("Urban Population")


# Get the data from World bank 
data <- WDI(country = "IN", indicator = c("Urban Population" = "SP.URB.TOTL.IN.ZS", "Access to Electricity" = "EG.ELC.ACCS.ZS"), start = 2000, end = 2022)
view(data)

#cleaning of data 
data <- data %>%
  clean_names() %>%
  drop_na(urban_population, access_to_electricity)
names(data)

#model 
model <- lm(urban_population~access_to_electricity, data = data)
summary(model)


# the relationship between them on a graph 
ggplot(data, aes(x = urban_population, y = access_to_electricity)) + 
  geom_point(color = "black", size = 3)+
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  labs(
    title = "Does Urban Population Have Full Access to Electricity ??",
    subtitle = "The Relationship Between Urban Population Vs Access to Electricity",
    source = "Data : World Bank Via WDI "
  ) + 
  theme_minimal()