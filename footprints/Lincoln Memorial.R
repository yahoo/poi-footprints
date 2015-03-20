library(rCharts)
map <- Leaflet$new()
map$setView(c(38.88927635,-77.05012934999999), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-77.04984,38.8889203],[-77.050497,38.8889209],[-77.0504959,38.8896324],[-77.0498386,38.8896318],[-77.0498389,38.8894592],[-77.049839,38.8893952],[-77.0497617,38.8893951],[-77.0497617,38.8893801],[-77.0497619,38.8892737],[-77.0497621,38.8891681],[-77.0497621,38.8891531],[-77.0498396,38.8891531],[-77.0498397,38.8890792],[-77.04984,38.8889203]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
