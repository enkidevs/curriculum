---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - new
  - workout

type: normal

category: how to

---

# States

---
## Content

States are used to change how different elements react in different "states".

For instance, you can set an element to popup on a `hover` state or a button to do something on a `pressed` state.

There are a total of 4 standard states. `None`, `Hover`, `Pressed` and `Focused`. 

States are located on the `Style` panel and to see them you first need to assign a class to an element.

Example without a class:

![no-class](https://img.enkipro.com/71d95d052041b5e52c3e227bef9c2d62.png)

Example with a class:

![with-class](https://img.enkipro.com/24a7efbfadb4d12c00fcd82ef3a77f28.png)

When an element has a class we can open the dropdown menu and choose a state.

When you select a state, it will be highlighted in green:

![selected-state](https://img.enkipro.com/2ad527abba7858f68ae30005fb282179.png)

Before applying any effects always check if that is the correct element and state you want to apply the effect to.

The `None` state is the default state of all elements.

The `Hover` state is used to display a styling when the user hovers over an element. 

The `Pressed` state is used to display a styling when the element is pressed.

The `Focused` state is used to display a styling while the element is in focus.

Let's say we have this simple form:

![simple-form](https://img.enkipro.com/be9a3458b5cf07aeff2f3a282cb5e54d.png)

After selecting the button, we can select the `Hover` state and for instance, add a shadow to appear when the user hovers over the button.

To add this effect, go to the `Style` panel, select the `Hover` state, scroll down to the bottom and under `Effects` select `Box shadows` and move the slider or write 4 in the Distance bar.

![effects](https://img.enkipro.com/2a3bc11f9f2f31a34c03f03fb9c09cdf.png)

![distance-four](https://img.enkipro.com/5240bc90b940befdccaa9bdf07e04650.png)

![result-shadow-box](https://img.enkipro.com/611bab883af8c457bb19d71ed9ec1c0e.gif)

**Note:** You can edit the styling of all states on a single element. 

To view the styling, first switch back to `None`, because the Canvas always displays what is selected. If the state we added an effect to is selected, the effect will be displayed on the Canvas.

After selecting none, just hover over the button to view the effect.

Now that we have the `Hover` state, let's add another state to our button.

Let's say we wanted to change the color of the button when it is pressed.

Select the same button, you will notice a small blue dot next to the `Hover` state because that state was edited and has some value in it. This is to show you that you have an active state. Now, select the `Pressed` state, go to the `Background` bar and select the color green.

Now our button will change its color when it is pressed.

![same-button-with-pressed](https://img.enkipro.com/93cce6c2d20e262ac04951cf3ea92c26.gif)

---
## Practice

What are the 4 standard states of all elements?

???

* Focussed, Pressed, None and Hover
* Pressed, None, Checked and Hover
* None, Hover, Checked and Default
* Hover, Checked, isClicked and None