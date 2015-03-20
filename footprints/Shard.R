library(rCharts)
map <- Leaflet$new()
map$setView(c(51.5043596,-0.0863944), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-0.0863913,51.5041021],[-0.0864814,51.5041403],[-0.0869823,51.5043396],[-0.0869747,51.5044206],[-0.0868338,51.5045968],[-0.0865355,51.5047988],[-0.0864718,51.5047736],[-0.0862177,51.5046753],[-0.0858065,51.5045179],[-0.0859483,51.5044033],[-0.0861705,51.504212],[-0.0859474,51.5040924],[-0.0860147,51.5039897],[-0.0860654,51.5039204],[-0.0861402,51.5039634],[-0.0863913,51.5041021]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'magenta', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
