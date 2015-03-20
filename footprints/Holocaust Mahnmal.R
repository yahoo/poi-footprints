library(rCharts)
map <- Leaflet$new()
map$setView(c(52.51389175,13.3787038), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[13.3800098,52.5136478],[13.3794781,52.5146468],[13.3791431,52.51458],[13.3777128,52.5144918],[13.3773978,52.5131367],[13.3800098,52.5136478]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'magenta', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
