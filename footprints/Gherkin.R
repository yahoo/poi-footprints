library(rCharts)
map <- Leaflet$new()
map$setView(c(51.514427350000005,-0.0803375), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-0.0799254,51.5144274],[-0.0799807,51.5142991],[-0.0801315,51.5142053],[-0.0803375,51.5141709],[-0.0805435,51.5142053],[-0.0806944,51.5142991],[-0.0807496,51.5144274],[-0.0806944,51.5145556],[-0.0805435,51.5146494],[-0.0803375,51.5146838],[-0.0801315,51.5146494],[-0.0799807,51.5145556],[-0.0799254,51.5144274]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
