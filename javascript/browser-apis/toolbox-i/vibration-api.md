---
author: rosielowther
type: normal
category: feature
links:
  - '[davidwalsh.name](https://davidwalsh.name/vibration-api){website}'
  - >-
    [Mozilla Developer
    Network](https://developer.mozilla.org/en-US/docs/Web/API/Vibration_API){website}
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

# Vibration API


---

## Content

The Vibration API makes a device vibrate with JavaScript. It is intended to be used with mobile devices to provide additional feedback.

To check if the API is present:

```plain-text
"vibrate" in navigator
```

You can specify the number of milliseconds the device should vibrate by passing in a numeric value to the vibrate method.

To make the device vibrate for 1 second:

```js
navigator.vibrate(1000);
```

You can also make the device vibrate in a **pattern** by passing in an array of millisecond values. The values alternate specifying vibration and pause time intervals.

```js
// vibrate for one second,
// pause for one second,
// vibrate for two seconds then stop
navigator.vibrate([1000, 1000, 2000]);     
```

Vibration can be stopped by passing a `0` or an empty array `[]` to the vibrate method.


---

## Practice

Fill in the gaps to make the device vibrate for two seconds, pause for a second, then vibrate for three more seconds:

```javascript
???.???([
  2000, 
  1000,
  ???
]);
```

- `navigator`
- `vibrate`
- `3000`
- `3`
- `300`
- `device`
- `object`
- `start`
- `vibration`


---

## Revision

Using the Vibration API, make the device vibrate for half a second:

```javascript
navigator.???(???);
```

- `vibrate`
- `500`
- `0.5`
- `5000`
- `start`
- `vibration`
 
