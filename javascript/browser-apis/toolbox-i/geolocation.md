---
author: tommarshall
type: normal
category: feature
links:
  - '[www.sitepoint.com](http://www.sitepoint.com/html5-geolocation/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Geolocation


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

If you want to be informed automatically when the devices position changes you can use the **geolocation.watchPosition** API.

```javascript
navigator.geolocation.watchPosition(
  function(pos) {
     var lat = pos.coords.latitude,
         long = pos.coords.longitude;
         console.log(`${lat} ${long}`);
  });
```


---

## Practice

Fill in the gaps in the following code snippet. Using the geolocation API exposed by the browser and assuming you have all the permissions needed, get the current device position and log the latitude and longitude.

```javascript
navigator.???.???(
  function(pos) {
    const lat = pos.???.???;
    const long = ???.???;
    console.log(lat, long);
  }
);
```

- geolocation
- getCurrentPosition
- coords
- latitude
- pos.coords
- longitude
- pos.latitude
- pos.longitude
- geoLocation
- getPosition
- coordiate
- watchPosition
- getLocation


---

## Revision

Fill in the missing bits of the following snippet such that, using the Geolocation API, you listen on the position changes of the device:

```javascript
navigator.???.???(
  function (pos) {
    console.log('new position', pos);
});
```

- geolocation
- watchPosition
- device
- permission
- position
- detect
- watch
- listen
- onChange
 
