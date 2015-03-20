library(rCharts)
map <- Leaflet$new()
map$setView(c(41.3915536,2.1647888), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[2.1646298,41.3915263],[2.1647448,41.3916107],[2.1647913,41.3916452],[2.164911,41.3917367],[2.1649528,41.3917676],[2.1650727,41.3916715],[2.1650305,41.3916398],[2.1648777,41.3915243],[2.1647798,41.3914509],[2.16463,41.3913396],[2.1645049,41.391435],[2.1646298,41.3915263]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'cyan', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
