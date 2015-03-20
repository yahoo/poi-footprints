library(rCharts)
map <- Leaflet$new()
map$setView(c(27.1750017,78.04216299999999), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[78.0418462,27.1751891],[78.0419455,27.1752691],[78.0423847,27.1752696],[78.0424765,27.1751895],[78.0424798,27.1748206],[78.0423858,27.1747348],[78.0419419,27.1747338],[78.0418471,27.1748208],[78.0418462,27.1751891]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
