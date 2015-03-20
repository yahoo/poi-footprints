library(rCharts)
map <- Leaflet$new()
map$setView(c(31.7766825,35.2345745), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[35.23449,31.776893],[35.234578,31.776907],[35.234659,31.776458],[35.234579,31.77646],[35.23449,31.776893]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'cyan', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
