library(rCharts)
map <- Leaflet$new()
map$setView(c(37.79516635,-122.4027782), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-122.4031394,37.795371],[-122.4030375,37.7948811],[-122.402417,37.7949617],[-122.4024456,37.7950996],[-122.4024884,37.7953049],[-122.4025189,37.7954516],[-122.4031394,37.795371]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'cyan', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
