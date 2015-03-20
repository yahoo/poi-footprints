library(rCharts)
map <- Leaflet$new()
map$setView(c(36.09547095,-115.17580430000001), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-115.1747895,36.0962937],[-115.1747771,36.0946583],[-115.1757537,36.0946535],[-115.1759251,36.0946526],[-115.1768089,36.0946483],[-115.1768192,36.0946482],[-115.1768255,36.0954611],[-115.1768315,36.0962837],[-115.176465,36.0962854],[-115.1758211,36.0962889],[-115.1751622,36.0962925],[-115.1747895,36.0962937]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
