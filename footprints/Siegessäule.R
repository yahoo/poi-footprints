library(rCharts)
map <- Leaflet$new()
map$setView(c(52.51450625,13.3501108), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[13.3499707,52.514394],[13.3500245,52.5143975],[13.3500267,52.5143849],[13.3502417,52.514399],[13.3502394,52.5144124],[13.3502903,52.5144157],[13.3502841,52.5144507],[13.3503066,52.5144522],[13.3502834,52.5145837],[13.3502533,52.5145817],[13.350247,52.5146172],[13.350181,52.5146128],[13.3501784,52.5146276],[13.3499942,52.5146155],[13.3499968,52.5146008],[13.3499352,52.5145968],[13.3499413,52.5145626],[13.349915,52.5145609],[13.349938,52.514431],[13.3499639,52.5144327],[13.3499707,52.514394]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'magenta', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
