library(leaflet)

CFCULogo <- makeIcon(
	iconUrl = "https://www.comfirstcu.org/images/logo.gif",
	iconWidth = 89,
	iconHeight = 21,
	iconAnchorX = 89/2,
	iconAnchorY = 11
)

CFCUlocations <- data.frame(
	lat = c(38.453594, 38.502237, 38.306802, 38.611669, 38.404080, 38.446126),
	lng = c(-122.771138, -122.997407, -122.302803, -122.871419, -122.825748, -122.730874)
)

CFCUlocations %>% leaflet() %>% addTiles() %>% addMarkers(popup="Branch location", icon = CFCULogo)
