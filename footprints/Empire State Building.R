library(rCharts)
map <- Leaflet$new()
map$setView(c(40.7484324,-73.9856557), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-73.9864855,40.7484833],[-73.9851554,40.7479226],[-73.9848259,40.7483735],[-73.9861526,40.7489422],[-73.9863111,40.7487242],[-73.9863282,40.7487007],[-73.9864684,40.7485078],[-73.9864855,40.7484833]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'magenta', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
