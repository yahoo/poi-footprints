library(rCharts)
map <- Leaflet$new()
map$setView(c(43.878898,-103.4591125), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-103.45918,43.878625],[-103.459351,43.879075],[-103.45897,43.879171],[-103.458874,43.879066],[-103.45911,43.878997],[-103.458944,43.878703],[-103.45918,43.878625]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
