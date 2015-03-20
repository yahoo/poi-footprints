library(rCharts)
map <- Leaflet$new()
map$setView(c(-25.69249495,-54.440430899999996), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-54.4357463,-25.6912363],[-54.4380886,-25.6900513],[-54.4401843,-25.6847927],[-54.4405542,-25.6830521],[-54.4428143,-25.6832373],[-54.4440471,-25.6843113],[-54.447088,-25.6850519],[-54.4469237,-25.687348],[-54.4468826,-25.6899772],[-54.4452388,-25.6981239],[-54.4415815,-25.7015675],[-54.4367736,-25.7019378],[-54.4339792,-25.699531],[-54.4337738,-25.6950134],[-54.4357463,-25.6912363]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
