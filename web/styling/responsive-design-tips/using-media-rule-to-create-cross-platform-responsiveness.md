---
author: Demonus

levels:

  - advanced

type: normal

category: feature

aspects:
  - workout
  - deep

tags:

  - media

  - responsive

  - css

  - multidevice



---

# Using `@media` rule to create cross platform responsiveness

---
## Content

The `@media` rule is a way to communicate with the designated device and can be used to change the CSS rules depending on the device properties.

`@media` rule works like a function. In the brackets we specify the media feature we are going to use  and in the following curly brackets we input the CSS code.
```css
.exampleclass{
  text-align: center;
}

@media(max-width: 750px){
  .exampleclass{
    text-align: left;
  }
}
```
In the example above the elements encapsulated in the `exampleclass` class will have their text aligned to `center` unless it is viewed on a device with less than 750 pixels width at which point the text will be aligned `left`.

---
## Practice

On which devices will the images be bigger?
```css
img {
  height: 200px;
  width: 250px;
}
@media(max-width: 720px){
 img {
   height: 350px;
   width:  500px;
 }
}
```
???

* Devices with width smaller than 720px.
* Devices with width larger than 720px.
* They will look the same.
* Devices with height smaller than 720px.

---
## Revision

Complete the following code snippet to align text to the centre if the device is being used is less than 600 pixels:

```css
.standard {
   text-align: left;
}

???(max-width: ???){
   .standard{
      text-align:center;
   }
}
```


* `@media`
* `600px`
* `@inherit`
* `@device`
* `600pix`
* `750px`
