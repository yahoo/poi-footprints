library(rCharts)
map <- Leaflet$new()
map$setView(c(51.50548835,-0.09053715000000001), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
json = '{"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"MultiPolygon","coordinates":[[[[-0.0909775,51.5052565],[-0.0904611,51.5048001],[-0.0896098,51.5051236],[-0.089506,51.5051987],[-0.0898893,51.5053903],[-0.089716,51.5055086],[-0.0897685,51.5056719],[-0.089661,51.5057469],[-0.0898352,51.5057925],[-0.0901137,51.5058888],[-0.0901586,51.505792],[-0.0901559,51.5056918],[-0.0904268,51.5057118],[-0.0903222,51.5060624],[-0.0906911,51.5060957],[-0.0907367,51.5058918],[-0.0911847,51.505943],[-0.0911453,51.5061422],[-0.0914819,51.5061766],[-0.0915683,51.5058346],[-0.0909775,51.5052565]]]]}}]}'
polygons = RJSONIO::fromJSON(json)
map$geoJson(polygons, style = "#! function(feature) { return { color: 'orange', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
