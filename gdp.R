library(ggplot2)
gapminder <- read.csv("data/gapminder_data.csv")
calcGDP <- function(gapminder_data, country = NULL) {
  if(!is.null(country)) {
    country_gdp <- gapminder[gapminder$country == country,]
    gdp <- country_gdp$pop * country_gdp$gdpPercap
  } else {
    country_gdp = gapminder_data
  }
  gdp <- country_gdp$pop * country_gdp$gdpPercap
  return(gdp)
}

calcGDP(gapminder, 'Ghana')
