library(rCharts)
map <- Leaflet$new()
map$setView(c(43.76914105,11.2567187), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
polygons = RJSONIO::fromJSON('Palazzo Vecchio.json')
map$geoJson(polygons, style = "#! function(feature) { return { color: 'green', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
