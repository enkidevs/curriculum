---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - java-gui

  - java-images

notes: ''

links:

  - >-
    [docs.oracle.com](http://docs.oracle.com/javase/7/docs/api/java/awt/image/BufferedImage.html){website}

---
# Cropping images

---
## Content

To crop an image, the `BufferedImage` class can be used with the `getSubimage` method. 

```java
BufferedImage im = orIm.getSubimage(x,y,w,h)
```
All `BufferedImage` objects have an upper left corner coordinate of `(0, 0)`, and `w` and `h` stands for width and height respectively. 

The code above returns an image defined by a specified rectangular region.

In addition, the image that is returned by `getSubimage` shares the same data array as the original image. Therefore, any changes or modification in either the original or the sub-image is replicated in the other too.

---
## Practice

Complete the following code snippet to get the sub image of a buffered image:
```
BufferedImage im = 
     orIm.???(x,y,w,h)
```
*`getSubimage` 
*`getImage` 
*`subImage`

---
## Revision

What are the co-ordinates of the top left hand corner of a `BufferedImage` ? 

???

*`(0, 0)` 
*`(10, 10)` 
*`(0, 10)` 
*`(10, 0)`