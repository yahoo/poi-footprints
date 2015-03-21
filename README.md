# Social Points of Interest from Online Photos #

## Overview ##

This repository contains the supplemental material (dataset) for the paper "Finding Social Points of Interest from Georeferenced and Oriented Online Photographs" by Bart Thomee, Ioannis Arapakis, David A. Shamma, currently under submission to _ACM Transactions on Multimedia Computing, Communications and Applications_.

The dataset is supplied as a set of ```R``` scripts; each script contains the bounding region of a POI and will render the spatial footprint inside as a HTML page in an invoked browser window. In total, there are 105 footprints from various points of interest around the world that were used as ground truth of the experiments described in the paper. The footprints themselves are represented inside the scripts as [GeoJSON multi-polygons][1], since this enables regions to be specified that can consist of more than one polygon that may also contain holes. In the example image below, the Musée du Louvre is only represented as a single geographic coordinate by Google Maps (left), whereas in reality it actually covers a relatively large area. Its geographic footprint (right) consists of two polygons, of which one (the pyramid, shown in magenta) is convex and the other (the palace, shown in orange) is concave and contains multiple holes.

<p align="center"><img src="example.jpg" alt="Comparison between how Google Maps (left) represents the Louvre and its actual spatial footprint (right)" /></p>

## Dependencies ##

* [R][2]
* [rCharts][3]

## Usage ##

Source the desired footprint's ```R``` file into memory (dependencies
will be called automatically). Then calling the ```map``` variable
will launch the footprint in your default browser.

### Making Footprints in R ###

Within ```R```:

```R
setwd("footprints")
source("Louvre.R")
map
```
### JSON ###

Inside the ```footprints``` directory is a list of POIs as global ```JSON``` coordinates plus the R code to generate that region in an HTML page (see above).

## Copyright and license ##

The footprints have been obtained from [OpenStreetMap][4] and, if warranted, have been modified to correct for errors in their polygonal representations. We are in the process of contributing our modifications back to OpenStreetMap. OpenStreetMap is open data, licensed under the [Open Data Commons Open Database License][5], &copy; OpenStreetMap contributors. The data we present here in this repository bears the same copyright and license.

[1]: http://geojson.org/geojson-spec.html
[2]: http://www.r-project.org/
[3]: https://ramnathv.github.io/rCharts/
[4]: http://www.openstreetmap.org/
[5]: http://opendatacommons.org/licenses/odbl/1.0/
