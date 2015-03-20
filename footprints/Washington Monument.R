library(rCharts)
map <- Leaflet$new()
map$setView(c(38.889469399999996,-77.03524965), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-77.0353466,38.8895447],[-77.0351527,38.8895447],[-77.0351527,38.8895447],[-77.0351527,38.8894974],[-77.0351527,38.8894504],[-77.0351527,38.8893941],[-77.0351527,38.8893941],[-77.0353466,38.8893941],[-77.0353466,38.8893941],[-77.0353466,38.8895447]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
