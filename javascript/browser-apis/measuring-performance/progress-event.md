---
author: tommarshall
type: normal
category: must-know
links:
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en/docs/Web/API/ProgressEvent){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# ProgressEvent


---

## Content

The *`ProgressEvent`* interface is used to represent events which measure the progress of underlying processes taking place in the API. For example, an HTTP request or loading an underlying resource such as *<img>*.

*ProgressEvent Properties:*

```javascript
ProgressEvent.lengthComputable;
```

Is a boolean flag returning whether the progress made on the work to be completed is measurable.

```javascript
ProgressEvent.loaded;
```

Is an unsigned long showing the amount of work already done by the underlying process.

```javascript
ProgressEvent.total;
```

Is an unsigned long showing the amount of work the underlying process is currently performing.

A usage example, measuring the progress of an *`XMLHttpRequest`*.

```javascript
// progress on transfers - server to client
function updateProgress (oEvent) {
  if (oEvent.lengthComputable) {
    var percentDone = oEvent.loaded /
                          oEvent.total;
    // ...
  } else {
    /* Unable to compute progress
     as size unknown */
  }
}
```


---

## Practice

Which following property of `ProgressEvent` shows the amount of work already done by the underlying process?

???

- `ProgressEvent.loaded;`
- `ProgressEvent.lengthComputable;`
- `ProgressEvent.total;`


---

## Revision

Which following property of `ProgressEvent` returns a boolean?

1) `ProgressEvent.loaded`

2) `ProgressEvent.lengthComputable`

3) `ProgressEvent.total`

???

- `2`
- `1`
- `3`
 
