MQA.EventUtil.observe(window,"load",function(){function e(e){e&&e.route&&(document.getElementById("realTime").innerHTML=e.route.formattedTime)}var t=$("#map-coordinates").data("resort-lat"),n=$("#map-coordinates").data("resort-lng"),o={elt:document.getElementById("map"),zoom:8,latLng:{lat:39.644801,lng:-106.595289},mtype:"map"};window.map=new MQA.TileMap(o),MQA.withModule("traffictoggle","mousewheel",function(){map.addControl(new MQA.TrafficToggle),map.enableMouseWheelZoom()}),MQA.withModule("largezoom",function(){map.addControl(new MQA.LargeZoom,new MQA.MapCornerPlacement(MQA.MapCorner.TOP_LEFT,new MQA.Size(5,5)))}),MQA.withModule("new-route",function(){map.addRoute({request:{locations:[{latLng:{lat:39.700493,lng:-105.206661}},{latLng:{lat:t,lng:n}}]}})}),MQA.withModule("directions",function(){MQA.Directions.route([{latLng:{lat:39.700493,lng:-105.206661}},{latLng:{lat:t,lng:n}}],null,null,e)})});