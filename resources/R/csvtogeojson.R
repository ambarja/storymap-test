library(geojsonio)
library(sf)
data <- read.csv(
  "resources/csv/StoryMap.csv",
  encoding = "latin1") %>% 
  st_as_sf(coords = c("lon","lat"), crs = 4326)
geojson_write(
  data,
  file = "StoryMap.geojson"
  )
