MQA.EventUtil.observe(window, 'load', function() {

  var resortLat = $('#map-coordinates').data('resort-lat');
  var resortLng = $('#map-coordinates').data('resort-lng');

  var options = {
    elt: document.getElementById('map'),              // ID of map element on page
    zoom: 8,                                          // initial zoom level of the map
    latLng: { lat: 39.644801, lng: -106.595289 },     // center of map in latitude/longitude
    mtype: 'map'                                      // map type (map, sat, hyb); defaults to map
  };

  // construct an instance of MQA.TileMap with the options object
  window.map = new MQA.TileMap(options);
  // download the modules
  MQA.withModule('traffictoggle', 'mousewheel', function() {
    map.addControl(new MQA.TrafficToggle());
    map.enableMouseWheelZoom();
  })
  MQA.withModule('largezoom', function() {
    map.addControl(
      new MQA.LargeZoom(),
      new MQA.MapCornerPlacement(MQA.MapCorner.TOP_LEFT, new MQA.Size(5,5))
    );
  });
  MQA.withModule('new-route', function() {
    map.addRoute({
      request: {
        locations: [
          { latLng: {lat: 39.700493, lng: -105.206661 }},
          { latLng: {lat: resortLat, lng: resortLng }}
        ]
        }
      });
  });
  MQA.withModule('directions', function() {
    // executes the route call with 4 parameters
    MQA.Directions.route(
        // an array of location objects as the first parameter
        [{ latLng: {lat: 39.700493, lng: -105.206661 }},
        { latLng: {lat: resortLat, lng: resortLng }}],

        // an object for route options are the second parameter
        null,

        // Pass in an instance of MQA.TileMap for the third parameter. If not null, the call will create
        // a route ribbon on the map.
        null,

        // Callback function to be executed after the route call. The callback will pass the raw response
        // from the route request as a parameter.
        summary
      );
    });
  // example callback function to display the distance and time
    function summary(data) {
      if (data && data.route) {
          document.getElementById('realTime').innerHTML = data.route.formattedTime;
      }
    }
});
