library(rCharts)
map <- Leaflet$new()
map$setView(c(41.3915536,2.1647888), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
polygons = RJSONIO::fromJSON('Casa Batlló.json')
map$geoJson(polygons, style = "#! function(feature) { return { color: 'green', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
