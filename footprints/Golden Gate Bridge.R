library(rCharts)
map <- Leaflet$new()
map$setView(c(37.81821656725514,-122.47831783252947), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
polygons = RJSONIO::fromJSON('Golden Gate Bridge.json')
map$geoJson(polygons, style = "#! function(feature) { return { color: 'green', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
