library(rCharts)
map <- Leaflet$new()
map$setView(c(48.873778200000004,2.2950353999999997), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[2.2950666,48.8735201],[2.2950977,48.8735655],[2.2951447,48.8736319],[2.2952736,48.8738203],[2.295321,48.8738873],[2.2953512,48.8739297],[2.295018,48.8740363],[2.2949835,48.87399],[2.2949356,48.8739238],[2.2947987,48.8737379],[2.2947506,48.8736712],[2.2947196,48.8736281],[2.2950666,48.8735201]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
