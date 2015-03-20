library(rCharts)
map <- Leaflet$new()
map$setView(c(40.7060955,-73.996951), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
polygons = RJSONIO::fromJSON('Brooklyn Bridge.json')
map$geoJson(polygons, style = "#! function(feature) { return { color: 'green', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
