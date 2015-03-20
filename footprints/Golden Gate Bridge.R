library(rCharts)
map <- Leaflet$new()
map$setView(c(37.81821656725514,-122.47831783252947), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-122.47730932194236,37.8110337060836],[-122.47762045818416,37.81104218226045],[-122.47932634311658,37.82537400483924],[-122.47900447803481,37.825399428426685],[-122.47730932194236,37.8110337060836]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
