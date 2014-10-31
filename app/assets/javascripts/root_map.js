MQA.EventUtil.observe(window, 'load', function() {

  var options = {
    elt: document.getElementById('map'),           // ID of map element on page
    zoom: 9,                                       // initial zoom level of the map
    latLng: { lat: 39.644801, lng: -106.595289 },  // center of map in latitude/longitude
    mtype: 'map',                                  // map type (map, sat, hyb); defaults to map
    bestFitMargin: 0,                              // margin offset from map viewport when applying a bestfit on shapes
    zoomOnDoubleClick: true                        // enable map to be zoomed in when double-clicking on map
  };

  // construct an instance of MQA.TileMap with the options object
  window.map = new MQA.TileMap(options);
  // download the modules
    MQA.withModule('traffictoggle', 'mousewheel', function() {

      // add the Traffic toggle button
      map.addControl(new MQA.TrafficToggle());

      // enable zooming with your mouse
      map.enableMouseWheelZoom();

    })
    MQA.withModule('largezoom', function() {

      // add the Large Zoom control
      map.addControl(
        new MQA.LargeZoom(),
        new MQA.MapCornerPlacement(MQA.MapCorner.TOP_LEFT, new MQA.Size(5,5))
        );

  });
});
