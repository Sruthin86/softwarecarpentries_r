fahr_to_kelvin <- function(temperature_f) {
  kelvin <- (temperature_f - 32) * ( 5/9 ) + 273.15
  return(kelvin)
}
 k <- fahr_to_kelvin(c(0, 32, 60))

 kelvin_to_c <- function(temperature_c) {
   celcius <- (temperature_c) - 273.15
   return(celcius) 
 }
celcius  <- kelvin_to_c(10)
celcius
