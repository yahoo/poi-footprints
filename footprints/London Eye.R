library(rCharts)
map <- Leaflet$new()
map$setView(c(51.503285899999995,-0.1196861), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-0.1194984,51.5038755],[-0.1196236,51.5038857],[-0.1196892,51.5035737],[-0.1197174,51.50344],[-0.1197795,51.5031447],[-0.1198068,51.5030148],[-0.1198738,51.5026963],[-0.1197486,51.5026861],[-0.1196816,51.5030046],[-0.1196257,51.5032704],[-0.1196216,51.5032901],[-0.119564,51.5035635],[-0.1194984,51.5038755]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
