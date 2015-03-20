# Social Points of Interest from Online Photos #

## Overview ##

This repository contains the supplemental material (dataset) for the
paper "Finding Social Points of Interest from Georeferenced and
Oriented Online Photographs" by Bart Thomee, Ioannis Arapakis, David
A. Shamma, currently under submission to _ACM Transactions on
Multimedia Computing, Communications and Applications_.

The dataset is supplied as a set of ```R``` scripts; each script contains the
bounding region of a POI and will render the spatial footprint inside
as a HTML page in an invoked browser window. In total, there are 105
footprints from various points of interest around the world that were
used as ground truth of the experiments described in the paper. The
footprints themselves are represented inside the scripts as
[GeoJSON multi-polygons][1], since this enables regions to be
specified that can consist of more than one polygon that may also
contain holes (see for example the spatial footprint of the Louvre,
Paris below).

## Dependencies ##

* [R][2]
* [rCharts][3]

## Usage ##

Source the desired footprint's ```R``` file into memory (dependencies
will be called automatically). Then calling the ```map``` variable
will launch the footprint in your default browser.

Within R:

```R
source("footprints/Louvre.R")
map
```

## Copyright and license ##

The footprints have been obtained from [OpenStreetMap][4] and, if
warranted, have been modified to correct for errors in their polygonal
representations. We are in the process of contributing our
modifications back to OpenStreetMap. OpenStreetMap is open data,
licensed under the [Open Data Commons Open Database License][5],
&copy; OpenStreetMap contributors. The data we present here in this
repository bears the same copyright and license.

[1]: http://geojson.org/geojson-spec.html
[2]: http://www.r-project.org/
[3]: https://ramnathv.github.io/rCharts/
[4]: http://www.openstreetmap.org/
[5]: http://opendatacommons.org/licenses/odbl/1.0/
