library(rCharts)
map <- Leaflet$new()
map$setView(c(41.403501750000004,2.1895387), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
polygons = RJSONIO::fromJSON('Torre Agbar.json')
map$geoJson(polygons, style = "#! function(feature) { return { color: 'green', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
