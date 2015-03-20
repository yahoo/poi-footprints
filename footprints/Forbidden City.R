library(rCharts)
map <- Leaflet$new()
map$setView(c(39.916680549999995,116.39080985), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[116.386196,39.9208617],[116.390258,39.9210138],[116.3905696,39.9210221],[116.390882,39.9210351],[116.3949683,39.9211795],[116.39535,39.9139113],[116.3953618,39.9136871],[116.3953735,39.9134639],[116.3954117,39.9127807],[116.3954237,39.9125081],[116.3917499,39.9123779],[116.3902732,39.9123175],[116.3866013,39.9121816],[116.3865548,39.9132016],[116.3865436,39.9134183],[116.3865318,39.9136483],[116.3862123,39.9205946],[116.386196,39.9208617]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'magenta', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
