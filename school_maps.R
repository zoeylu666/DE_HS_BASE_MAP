mydata <- read.csv(file.choose(""), header=TRUE)
#C:\Users\Zoey Lu\Documents\CRESP\College Readiness\Projects\Dashboard\school_maps.csv


if(!require("leaflet.extras")) install.packages("leaflet.extras")
library(leaflet)
library(htmltools)
library(leaflet.extras)


  demap <- leaflet() %>%
    addProviderTiles("CartoDB") %>%
    addMarkers(lng = mydata$lon, lat = mydata$lat, popup = mydata$school)
  
  demap

  map_zoom <-  demap %>%
    setView(lat = 39.000000, lng = -75.500000, zoom =8)
  map_zoom
  
  
  map_zoom <- map_zoom %>%
    clearBounds()
       map_zoom
  
  pal <- colorFactor(palette =c("red", "blue", "#9b4a11", "#d01c8b", "#f4a582"),
                     levels =c("1. Most Proficient", "2. Somewhat Proficient", "3. Moderate Proficient", "4. Somewhat less proficient", "	
5. Least Proficient"))

       map_zoom %>%
         addCircleMarkers(data = mydata, radius = 4, color = ~pal(cluster5_cat), 
                          label = ~school)
       map_zoom 
       

#build a base map
  
       
map_zoom <-  demap %>%
         setView(lat = 39.000000, lng = -75.500000, zoom =8)
       map_zoom
       