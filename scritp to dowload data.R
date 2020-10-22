### dowloading some data that may be helpful 
library(tidycovid19
)
library(tidyverse)

### ecdc data with the dauilya data about covid in the world
library(tidycovid19
        )
ecdc=download_ecdc_covid19_data(silent = FALSE, cached = FALSE)
glimpse(ecdc)
## checking italy with a plot
ecdc %>%
  dplyr::filter(iso3c == "GBR", !is.na(cases)) %>%
  ggplot2::ggplot(ggplot2::aes(x = date, y = cases)) +
  ggplot2::geom_bar(stat = "identity", fill = "lightblue")


## CPI index 
cpi_index=download_oxford_npi_data(type = "index", silent = FALSE, cached = FALSE)

## acaps
acaps=	
  download_acaps_npi_data(silent = FALSE, cached = FALSE)

### google trends data 
##f fell free to add terms 
## careful !!!! out of a server can take forever
cor_google=download_google_trends_data(
  search_term = "coronavirus",
  type = "country_day",
  countries = NULL,
  low_search_volume = FALSE,
  pause = TRUE,
  silent = FALSE,
  cached = FALSE
)


