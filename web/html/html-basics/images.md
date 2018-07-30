---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  web.syntax-html.0: 10
  web.syntax-html.1: 10
  web.embed-media.0: 10

aspects:
  - introduction

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img){documentation}'
  
---

# Images

---
## Content

**Image** elements display pictures that are stored online. Image elements are unique because they are *self-enclosing elements*, which means that do not have a separate closing tag and are written as a single tag like this:

```html
<img src="logo.png" />
```
The image tag will appear in a webpage like this: 

![image-logo-enki](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20width%3D%22320%22%20height%3D%22115%22%3E%3Cdefs%3E%3ClinearGradient%20id%3D%22b%22%20x1%3D%2250%25%22%20x2%3D%2250%25%22%20y1%3D%220%25%22%20y2%3D%22100%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%23404956%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-opacity%3D%22.5%22%2F%3E%3C%2FlinearGradient%3E%3Cpath%20id%3D%22a%22%20d%3D%22M20%2020h205v75H20z%22%2F%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22115%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cuse%20fill%3D%22%23292C33%22%20xlink%3Ahref%3D%22%23a%22%2F%3E%3Cuse%20fill%3D%22url%28%23b%29%22%20xlink%3Ahref%3D%22%23a%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20fill-opacity%3D%22.6%22%20d%3D%22M56.46429%2053.91184v4.0197l-10.125%206.31669%2010.125%206.31668v4.0197L42%2065.39672v-2.29697l14.46429-9.1879zM183.75%2042.42697h3.47143l-12.15%2037.32584H171.6l12.15-37.32584zm5.78571%2011.48487L204%2063.09974v2.29698l-14.46429%209.1879V70.5649l10.125-6.31668-10.125-6.31668v-4.0197z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20fill-opacity%3D%22.6%22%20d%3D%22M56.46429%2053.91184v4.0197l-10.125%206.31669%2010.125%206.31668v4.0197L42%2065.39672v-2.29697l14.46429-9.1879zM183.75%2042.42697h3.47143l-12.15%2037.32584H171.6l12.15-37.32584zm5.78571%2011.48487L204%2063.09974v2.29698l-14.46429%209.1879V70.5649l10.125-6.31668-10.125-6.31668v-4.0197z%22%2F%3E%3Cpath%20fill%3D%22%23F96E44%22%20d%3D%22M64.68%2063.11672v-.25924c0-11.3852%204.91021-17.07772%2014.73078-17.07772%202.05597%200%203.92054.31866%205.59376.95597%201.67321.6373%203.00192%201.38803%203.98616%202.25218.98425.86415%201.84818%201.99293%202.59183%203.38638.74365%201.39344%201.27404%202.57623%201.59119%203.5484.31715.97217.5632%202.14956.73818%203.5322.17498%201.33944.26246%202.18198.26246%202.52764v1.42584l-.13123%202.3332H69.6012c.3062%203.32698%201.33418%205.74117%203.08394%207.24263%201.74977%201.50147%204.34157%202.25219%207.7755%202.25219%204.42448%200%207.99401-.67553%2010.68634-2.04826l.82925%204.51108C88.73916%2079.23308%2084.81318%2080%2080.19817%2080h-.19685c-1.96849%200-3.7729-.23224-5.41331-.69672-1.64041-.46448-3.25345-1.26921-4.83918-2.41421-1.58573-1.145-2.82695-2.86788-3.7237-5.16868-.89676-2.3008-1.34513-5.09305-1.34513-8.37683v-.22684zm5.50043-1.62028c.21872-4.0615%201.07718-6.94557%202.57542-8.65227%201.49824-1.7067%203.9096-2.56004%207.23416-2.56004%202.14346%200%203.94241.48608%205.3969%201.45825%201.4545.97217%202.4606%202.18737%203.01834%203.64562.55774%201.45826.92956%202.65185%201.11547%203.58081.18592.92897.27887%201.7715.27887%202.52763H70.18043zm27.91731%2017.98292v-30.4612c4.35324-2.16037%209.03127-3.24054%2014.03424-3.24054%204.17997%200%207.4232%201.05857%209.72976%203.17574%202.30656%202.11717%203.45983%205.09845%203.45983%208.94392v21.58208h-4.80803V57.89728c0-.92896-.09746-1.7553-.29238-2.47902-.19492-.72373-.57393-1.49605-1.13703-2.317-.5631-.82094-1.47272-1.45284-2.72888-1.89572-1.25616-.44288-2.83716-.66431-4.74305-.66431-2.79387%200-5.70681.44287-8.73892%201.32863v27.6095h-4.77554zm31.85767.00215V37.19006h4.86742v25.44058l15.11603-16.33239h6.08192l-13.86395%2015.263%2016.18087%2017.92026h-6.47893L138.9996%2064.93143l-4.17676%204.47196v10.07812h-4.86742zm30.6992-38.33238V36h5.21308v5.14913h-5.21307zm0%205.14912h5.21308v33.18326h-5.21307V46.29825z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

An image element receives its content using the source attribute, written as `src`. In this case, the image would be found in the same folder as the HTML document:

```html
<img src="logo.png" />
```

For images located inside other folders:
```html
<img src="images/logo.png" />
```

For images located on other websites:
```html
<img
  src="http://website.com/logo.png"/>
```

By default, an image will display within a webpage at its original height and width, measured in pixels. The image size can be overridden by using the `width` and `height` attributes - measured in pixels (although it is common for images to be sized appropriately using height and width in CSS):

```html
<img src="logo.jpg"
  width="150" height="150" />
```

Another important attribute is `alt`, which provides a text description in the browser in case the image doesn't load properly, as well as helping search engines and screen readers for visually disabled understand the meaning of the image. 

```html
<img src="images/cat.jpg"
  alt="Mufasa sitting on top
       of Pride Rock, looking 
       majestic." />
```

---
## Revision

Complete the following snippet such that it contains valid code:
```html
<img ???="images/puppy.jpg"/>
```

* src
* href
* link
* source
