library(rCharts)
map <- Leaflet$new()
map$setView(c(51.5006458,-0.12458274999999999), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-0.1246714,51.5007139],[-0.1246968,51.5005947],[-0.1246665,51.5005922],[-0.1245029,51.5005784],[-0.1244942,51.5005777],[-0.1244687,51.5006971],[-0.1245644,51.5007048],[-0.1246714,51.5007139]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
