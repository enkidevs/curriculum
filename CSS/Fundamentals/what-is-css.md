# What Is CSS?
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [www.theodinproject.com](http://www.theodinproject.com/courses/web-development-101#section-the-front-end){website}

---
## Content

**CSS**, also known as **Cascading Style Sheets**, is a styling language that can be applied to HTML, XML or SVG documents. 

CSS is very important to get to know about, because pretty much every website nowadays uses it to customize HTML elements.

As for any project, functional separation of the files is recommended. Following this rule, we can split the files of a website into three categories: *structure*, *presentation* and *behavior*. 

CSS is the one that takes care of the *presentation*. (HTML takes care of the structure and JavaScript looks after the behavior.) 

There are several advantages to splitting the roles: 
 - No code duplication, as the CSS file can be used for similar looking pages of the website.
 - A consequence of less code is less data to be transmitted, which is important for users with a slow internet connection.
 - The *presentation* can be changed without modifying the *content*.


CSS can make changes to the HTML elements color and size, their positioning, and can  even animate them. 

The syntax for a CSS *declaration* (a property and value pair) is:
```
background-color: red
```
The property we are looking to change is `background-color`. The `:` separates the two entities, and `red` is the new property value.

Every *declaration* has to be located inside a *block*:
```
{
  background-color: red
}
```
Multiple declaration can be grouped inside a block. In this case, semicolons, `;` are required after each declaration:
```
{
  background-color: red;
  text-decoration: underline;
}
```
The above snippets made some changes, but CSS doesn't know which elements they are referring to. *Selectors* are used to specify those elements:
```css
p{
  background-color: red;
  text-decoration: underline;
}
```
`p` is a type selector. Whatever css rules you apply to `p` in this example, it will affect all instances of `<p>` elements in the HTML document.

---
## Practice

Complete the following snippet with the general syntax for a CSS declaration:
```
??? {
  ??? ??? ???;
}
```
*`selector`
*`property`
*`:`
*`value`
*`=`
*`background-decoration`
*`red`

---
## Revision

Complete the following snippet with the general syntax for a CSS declaration:
```
??? {
  ??? ??? ???;
}
```
*`selector`
*`property`
*`:`
*`value`
*`=`
*`background-decoration`
*`red`