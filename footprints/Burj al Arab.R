library(rCharts)
map <- Leaflet$new()
map$setView(c(25.14120355,55.1853784), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[55.1848609,25.1415984],[55.1849086,25.1416591],[55.1858959,25.1414881],[55.1858222,25.1412343],[55.1858086,25.1411528],[55.1857848,25.1410863],[55.185755,25.141032],[55.1856733,25.1409546],[55.1855987,25.1409132],[55.1855095,25.1408882],[55.1852393,25.140748],[55.1848609,25.1415984]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'magenta', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
