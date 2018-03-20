# Geolocation
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

links:

  - '[www.sitepoint.com](http://www.sitepoint.com/html5-geolocation/){website}'

---
## Content

The Geolocation API provides location information such as the latitude and longitude coordinates. 

The exact information available will depend on the device.

Note that for privacy reasons the user must grant the API permission.

To obtain the devices current position use the **getCurrentPosition** API:

```javascript
  navigator.geolocation
  .getCurrentPosition(
    function(pos) {
     var lat = pos.coords.latitude,
         long = pos.coords.longitude;
         console.log(`${lat} ${long}`);
   });
```

If you want to be informed automatically when the devices position changes you can use the 
**geolocation.watchPosition** API.

```javascript
navigator.geolocation.watchPosition(
  function(pos) {
     var lat = pos.coords.latitude,
         long = pos.coords.longitude;
         console.log(`${lat} ${long}`);
  });
```

---
## Revision

Complete the following JS code snippet to allow use of the Geolocation API allowing you to be informed when a devices position changes:

```javascript
???.geolocation.???(
```

* `navigator`
* `watchPosition`
* `device`
* `permission`
* `position`
* `detect`