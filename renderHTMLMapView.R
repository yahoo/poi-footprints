## This is an exmaple on how to read the GeoJSON into R and then
## render a HTML Map View.

library(rCharts)
filename <- 'footprints/Transamerica Pyramid.json'
polygons = RJSONIO::fromJSON(filename)
m <- matrix(unlist(polygons$features[[1]]$geometry$coordinates),
            ncol=2,
            byrow=TRUE)
map <- Leaflet$new()
map$setView(c(mean(m[, 2]), mean(m[, 1])), zoom = 17)
map$tileLayer(provider = 'Stamen.Toner')
map$geoJson(polygons,
            style = "#! function(feature) { return { color: 'green', strokeWidth: '1px', strokeOpacity: 0.8, fillOpacity: 0.8 }; } !#")
map
