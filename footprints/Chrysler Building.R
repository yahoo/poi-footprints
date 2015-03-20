library(rCharts)
map <- Leaflet$new()
map$setView(c(40.7516216,-73.9753388), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-73.9758501,40.7514887],[-73.9757433,40.7516351],[-73.9755964,40.7518367],[-73.9754899,40.7519828],[-73.9748275,40.7517045],[-73.9748782,40.7516356],[-73.9749636,40.7515704],[-73.9750878,40.7514754],[-73.9751265,40.7514464],[-73.9751761,40.7513975],[-73.9752462,40.7513278],[-73.9752683,40.751306],[-73.9752947,40.7512796],[-73.9753144,40.7512604],[-73.9758501,40.7514887]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'cyan', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
