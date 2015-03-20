library(rCharts)
map <- Leaflet$new()
map$setView(c(40.71162435,-74.01326800000001), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-74.0139232,40.7128089],[-74.0125664,40.7122676],[-74.0128153,40.7119307],[-74.0128906,40.7116451],[-74.0123095,40.7116105],[-74.0123752,40.7113349],[-74.0124139,40.7111572],[-74.0125106,40.7108468],[-74.0126805,40.7104398],[-74.0128851,40.7105244],[-74.0142265,40.7110794],[-74.0139232,40.7128089]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'magenta', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
