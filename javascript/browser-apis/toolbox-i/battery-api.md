---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature


links:

  - '[davidwalsh.name](https://davidwalsh.name/javascript-battery-api){website}'
  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/Battery_Status_API){website}'


---
## Content
# Battery API

The Battery API provides information about the system's **battery** status, such as the current charge level, the time left to full charge and the battery time remaining.

The Battery API exposes event handlers for handling changes to the battery level, charging and discharging times.

The Battery API could be used to provide a low power mode of your application or to prompt a user to save information before the battery level reaches a critical level.

To monitor changes to the battery level:
```
navigator.getBattery()

    .then(function(battery) {
      
    LogBatteryLevel();

    battery.addEventListener(
    'levelchange', LogBatteryLevel); 

    function LogBatteryLevel() {
      var bat = battery.level * 100;
      console.log(`Level: ${bat}%`);
    }

  });
```

Keep in mind that this API is currently available for Opera, Firefox and Chrome(Android version as well).

---
## Revision

Complete the following JS code snippet to give the functionality of the battery API: 

```javascript
navigator.???()
         .???(function(result) {
         // ...
});
```


* `getBattery`
* `then`
* `battery`
* `batteryApi`
* `now`
* `run`
* `start`

