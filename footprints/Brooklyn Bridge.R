library(rCharts)
map <- Leaflet$new()
map$setView(c(40.7060955,-73.996951), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-73.999425,40.707856],[-73.999134,40.708027],[-73.994477,40.704335],[-73.994724,40.704164],[-73.999425,40.707856]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
