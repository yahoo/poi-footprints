library(rCharts)
map <- Leaflet$new()
map$setView(c(48.8841155,2.3322905), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[2.33218,48.88421],[2.332465,48.884147],[2.332392,48.884021],[2.332116,48.88409],[2.33218,48.88421]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'magenta', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
