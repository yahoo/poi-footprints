# Social Points of Interest from Online Photos #

## Overview ##

In total, the dataset contains 105 footprints from various points of
interest (POIs) around the world, which were used as ground truth of
the experiments described in the paper.

The dataset is supplied as a set of ```R``` scripts and accompanying
```JSON``` objects. Each object represents the spatial footprint of a
POI, and the script will render this region as a HTML page in an
invoked browser window. The ```JSON``` objects are expressed as
[GeoJSON multi-polygons][1], because this allows regions to be
specified that can consist of more than one polygon that may also
contain holes.

For example, while in the image below the Musée du Louvre is only
represented as a single geographic coordinate by Google Maps (left),
in reality it actually covers a relatively large area: its geographic
footprint (right) consists of two polygons, of which one (the pyramid,
shown in magenta) is convex and the other (the palace, shown in
orange) is concave and contains multiple holes.

![Comparison between how Google Maps (left) represents the Louvre and its actual spatial footprint (right)](example.jpg)

## JSON ##

Inside the ```footprints``` directory is a list of POIs as global
```GeoJSON``` coordinates.

## Example and Usage ##

If you are to run the ```renderHTMLMapView.R``` script you will, of
course, need [R][2] as well as [rCharts][3].

Edit the file path and name in the example script and source it in
```R``` file into memory (dependencies will be called
automatically). Then calling the ```map``` variable will launch the
footprint in your default browser.

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
