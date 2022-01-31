---
author: jordanfish
type: bugSpot
category: tip
---

# CSSplat


---

## Content

Someone has written some terrible CSS.

Can you spot his mistakes?


---

## Game Content

sub, sup {
  font-size: 75%;
  line-heigth: 0;
//  line-height: 0;
  position: relative;
  vertical-align: baseline;
}
%exp
Here we face a typo. `height` is misspelled.
%

​---
.list .opt:nth-child(m-1) {
//.list .opt:nth-child(n-1) {
  background: #34495c;
  left: 0;
  padding: 1em;
  transform: translate(0, -50%);
}
%exp
The `.nth-child` pseudo-selector can take as argument either a number, a keyword (`even`, `odd`), or a formula.

However, when stating a formula, the unknown variable must be `n`.
%

​---
.insight .link-name {
  position: absolute;
  display: inline-block;
  left: 40px;
  width: calc(100%-40px);
//  width: calc(100% - 40px);
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  color: #FFF;
}
%exp
When using the `+` and `-` operators within the `calc` function keep in mind they must be padded by whitespaces.
%

​---
.insight-container < div {
//  .insight-container > div {
  position: absolute !important;
  bottom: 0;
  top: 0;
  left: 0;
  right: 0;
}
%exp
There is no `<` operator in CSS, but `>`.
In our case, all `div` elements with a parent of class `insight-container` will be selected.
%

​---
.workout-end-container {
  letter-spacing: -4px;
  padding-right: 4px;
  text-font: "Roboto Mono";
//  font-family: "Roboto Mono";
  color: #FF6F31;
}
%exp
To specify the font in CSS, one must use the `font-family` property.

There is no such thing as `text-font`.
%

​---
.workout-feedback-container {
  color: #FF6F31;
  text-transform: uppercase;
  font-size: 1.2em;
  pading-top: 3vh;
//  padding-top: 3vh;
}
%exp
Here we have another typo. Padding is correctly spelt with double `d`.
%

​---
.top-bar {
  position: fixed;
  top: 0; left: 0;
  padding: 22px 15px 0;
  height: 66px;
  color: #ECF0F1;
  font-size: 12px;
  zindex: 1000;
//  z-index: 1000;
  width: 100%;
  background: #212121;
  pointer-events: all;
}
%exp
The right syntax to specify the stack order of an element is `z-index: x`.
%

​---​
.navigationbar .location {
  font-family: "Roboto";
  font-weight: 500;
  text-transform: upper;
//  text-transform: uppercase;
  padding-top: 35px;
  font-size: 12px;
  color: #ECF0F1;
  text-align: center;
}
%exp
`upper` doesn't mean anything in CSS. However, `uppercase` can be used to transform all characters as intended.
%

​---
.insight .link-type-icon {
  color: #FFF;
  min-widht: 30px;
//  min-width: 30px;
  height: 30px;
  font-size: 150%;
  margin-left: 0px;
  margin-right: 0px;
  padding-left: 0px;
  display: inline-block;
}
%exp
"width" in `min-widht` is misspelled here.
%

​---
.navigationbar .back {
  padding: 30px 50px 10px 15px;
  font-size: 25px;
  length: 44px;
//  width: 44px;
  outline: none;
  text-align: left;
  color: #ECF0F1;
  background: transparent;
}
%exp
There is no `length` property in CSS. `width` should be used instead.
%

​---
.autoscroll-container {
  overflow: hidden;
  line-height: 26px;
  font-size: 50%;
  height: 100%
//  height: 100%;
  user-select: none;
}
%exp
There is a missing semicolon (`;`) near the `height` property. This will rise an error.
%

​---
.drop {
  color: #34495C;
  background: current-color;
//  background: currentColor;
  transition:
    height 0.2s ease-out,
    width 0.2s ease-out;
  border-radius: 50%;
  position: absolute;
  transform: translate(-50%, -50%);
}
%exp
The correct name of the value for setting the current color is `currentColor`;
%

---

.field .input-field {
  color: #FFF;
  font-size: 16px;
  border: 0;
  width: 100%;
  background: 12px;
//  background: #252A2F;
  border-bottom: 1px solid #34495C;
  border-radius: 0;
}
%exp
Using the `background` property with just one value argument will act as a shorthand for `background-color`.
Hence, simply specifying a size instead of a color will raise an error.
%

​---
.insight-controls {
  line-height: 21px;
  position = fixed;
//  position: fixed;
  height: 100%;
  width: 100%;
  z-index: 10;
  background: #212121;
  color: #FF6F31;
  top: calc(-100% + 66px);
  left: 0;
}
%exp
CSS uses `:` for assigning values and not `=`.
%

​---
.password-field .eye {
  position: absolute;
  right: 0; top: 0;
  font-size: 24px;
  width: 44px;
  align: right;
//  text-align: right;
  padding-top: 20px;
  color: #7F8C8D;
  opacity: 0;
  transition: opacity 0.2s ease-in-out;
}
%exp
The correct syntax for aligning text horizontally in CSS is `text-align` and not `align`.
%

​---
.share .share-view {
  background: #7F8C8D;
  position: absolute;
  bottom: 0;
  max-height: 0;
  width: 100%;
  transition: all 0.3s ease-out;
  overflow: stack;
// overflow: hidden;
  z-index: 10;
}
%exp
Overflow can be `hidden` but not `stack`.
%

​---
.share .share-view > h1 {
  text-transform: uppercase;
  text-align: center;
  font-size: 0.9em;
  font-weight: 300;
  min-margin: 10px;
//  margin: 10px;
  padding-left: 20px;
}
%exp
CSS doesn't provide any `min-margin` property, but a `margin` one.
%

​---
.tabBar .tabBar-element {
  width: 25%;
  display: inline-block;
  line-height: 8px;
  vertical-align: bottom;
  text-align: center;
  color: #BDC3C7;
  text-decoration: none;
  transition: color 0.3s ease-in-out;
  font-size: 12ms;
//  font-size: 12px;
}
%exp
The `font-size` property won't accept `12ms` as a correct value because it doesn't represent a size.
Instead, `12px` wouldn't raise any errors.
%

​---
.segmented-control .label {
  width: 33%;
  float: left;
  font-variant: uppercase;
//  font-variant: small-caps;
  border-bottom: 3px solid transparent;
  color: #FF6F31;
  text-align: center;
  -webkit-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
  font-size: 12px;
}
%exp
The `font-variant` can't take `uppercase` as value, but `small-caps`.

The latter will also transform all letters of the text to uppercase, but will also decrease the their font size.
%

---​
.tabBar .tabBar-icon {
  display: block;
  line-height: 32px;
  font: 2em, "Open Sans";
//  font: 2em "Open Sans";
  color: #7F8C8D;
}
%exp
When specifying multiple values for a CSS property such as `font` you must separate them by a whitespace and not a comma (`,`).
%
 
