library(rCharts)
map <- Leaflet$new()
map$setView(c(-22.95190705,-43.2108577), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-43.2108904,-22.9519377],[-43.2108848,-22.9518721],[-43.210825,-22.9518764],[-43.2108307,-22.951942],[-43.2108904,-22.9519377]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
