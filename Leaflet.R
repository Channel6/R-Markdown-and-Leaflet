library(leaflet)

CFCULogo <- makeIcon(
	iconUrl = "https://www.comfirstcu.org/images/logo.gif",
	iconWidth = 31*215/230,
	iconHeight = 31,
	iconAnchorX = 31*215/230/2,
	iconAnchorY = 16
)

CFCUlocations <- data.frame(
	lat = c(41.872693, 38.453594, 38.502237, 38.306802, 38.611669, 38.404080, 38.446126)
	lng = c(-88.099606, -122.771138, -122.997407, -122.302803, -122.871419, -122.825748, -122.730874)
)

my_map <- leaflet() %>% addTiles() 
my_map <- my_map %>% addMarkers(lat=43.1594, lng= -79.2469, popup="Branch location", icon = ciscoIcon)
my_map