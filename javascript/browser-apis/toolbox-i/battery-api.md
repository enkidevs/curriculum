---
author: rosielowther
type: normal
category: feature
links:
  - '[davidwalsh.name](https://davidwalsh.name/javascript-battery-api){website}'
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/Battery_Status_API){website}
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

# Battery API


---

## Content

The Battery API provides information about the system's **battery** status, such as the current charge level, the time left to full charge and the battery time remaining.

The Battery API exposes event handlers for handling changes to the battery level, charging and discharging times.

The Battery API could be used to provide a low power mode of your application or to prompt a user to save information before the battery level reaches a critical level.

To monitor changes to the battery level:

```javascript
navigator.getBattery()
    .then(function(battery) {
      LogBatteryLevel();
      battery.addEventListener(
        'levelchange', LogBatteryLevel);

      function LogBatteryLevel() {
        let bat = battery.level * 100;
        console.log(`Level: ${bat}%`);
      }
  });
```

Keep in mind that this API is currently available for Opera, Firefox and Chrome(Android version as well).


---

## Practice

The async `getBattery` method of the Battery API returns a `battery` object. Fill in the gaps in the following snippet such that you log each level change in the device's battery via an event listener:

```javascript
navigator.???()
  .then((battery) => {
    ???.???(
      ???, () => {
        console.log(battery.level * 100)
      }
    )
  })
```

- getBattery
- battery
- addEventListener
- 'levelchange'
- logBatteryLevel
- addListener
- bat
- 'level'
- 'change'
- BatteryAPI
- 'levelChange'

---

## Revision

Using the battery API, fill in the missing gaps of the following code snippet such that the battery level is outputed properly:

```javascript
???.???
  .then((battery) => {
    console.log(battery.level)
  })
```

- navigator
- getBattery
- then
- battery
- batteryApi
- now
- run
- start
 
