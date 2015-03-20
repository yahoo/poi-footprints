library(rCharts)
map <- Leaflet$new()
map$setView(c(37.755235,-122.452891), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-122.45308,37.755232],[-122.452706,37.755415],[-122.452702,37.755055]],[[-122.452945,37.755236],[-122.452779,37.755313],[-122.452777,37.75516]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
