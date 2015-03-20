library(rCharts)
map <- Leaflet$new()
map$setView(c(38.01032655,-78.4523513), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-78.4524539,38.010461],[-78.4523614,38.0104893],[-78.4523497,38.0104654],[-78.4522969,38.0104555],[-78.452269,38.0103988],[-78.4522243,38.0104125],[-78.4521859,38.0103344],[-78.4522306,38.0103207],[-78.4521983,38.0102553],[-78.4522248,38.0102118],[-78.4522151,38.010192],[-78.4523075,38.0101638],[-78.4523177,38.0101844],[-78.4523721,38.0102023],[-78.4523996,38.0102581],[-78.4524765,38.0102345],[-78.4525167,38.0103162],[-78.4524398,38.0103397],[-78.4524717,38.0104046],[-78.4524425,38.010438],[-78.4524539,38.010461]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'magenta', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
