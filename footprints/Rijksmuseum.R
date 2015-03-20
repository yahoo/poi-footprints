library(rCharts)
map <- Leaflet$new()
map$setView(c(52.359839949999994,4.8850052999999996), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[4.8838597,52.3604093],[4.8848906,52.3606682],[4.8850279,52.3607677],[4.8865643,52.3600534],[4.8863648,52.3597863],[4.8862424,52.3589493],[4.8861523,52.3589122],[4.8859358,52.3589328],[4.8848275,52.3591276],[4.8844241,52.3592115],[4.8849313,52.3595853],[4.8846704,52.3597114],[4.8841666,52.3593163],[4.883892,52.359547],[4.8834463,52.3601629],[4.8838597,52.3604093]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
