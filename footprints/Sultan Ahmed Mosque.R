library(rCharts)
map <- Leaflet$new()
map$setView(c(41.005454650000004,28.9766974), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[28.9769048,41.0048917],[28.9770271,41.0049157],[28.9774704,41.0052906],[28.9774502,41.0053435],[28.976823,41.0057747],[28.9764698,41.0060176],[28.9762048,41.0057981],[28.9759244,41.0055658],[28.9769048,41.0048917]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
