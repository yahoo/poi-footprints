library(rCharts)
map <- Leaflet$new()
map$setView(c(37.795537350000004,-122.3934076), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-122.3924983,37.7949333],[-122.3930623,37.7955462],[-122.3931811,37.795674],[-122.3934966,37.7960134],[-122.3936803,37.7962109],[-122.3938569,37.7964095],[-122.3942533,37.7961795],[-122.3943169,37.7961372],[-122.3937765,37.795554],[-122.3938408,37.7955151],[-122.393704,37.7953691],[-122.3935578,37.7952131],[-122.3934956,37.7952508],[-122.3931575,37.7948859],[-122.392953,37.7946652],[-122.3928433,37.7947299],[-122.3924983,37.7949333]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'magenta', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
