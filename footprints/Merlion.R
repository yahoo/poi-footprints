library(rCharts)
map <- Leaflet$new()
map$setView(c(1.2867627499999998,103.85447070000001), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[103.8544807,1.2867727],[103.8544849,1.2867627],[103.8544807,1.2867527],[103.8544707,1.2867486],[103.8544607,1.2867527],[103.8544565,1.2867627],[103.8544607,1.2867727],[103.8544707,1.2867769],[103.8544807,1.2867727]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'cyan', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
