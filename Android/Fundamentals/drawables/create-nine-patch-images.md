# create-nine-patch-images
author: tlawson

levels:

  - beginner

type: normal

category: how to

links:

  - '[Creat a nine-patch image](http://www.dev2qa.com/android-nine-patch-image-example/)'

---
## Content

A `Nine-Patch` is an image that has stretchable areas defined. These areas are defined in one pixel border around the area. Add black pixels to the top and left of the border to describe where the image can be stretched horizontally or vertically. Nine patch images are especially useful when designing buttons. Custom drawn buttons can look distorted and pixelated when their borders are stretched in addition to the rest of the images. Below are the mentioned steps. 

**Steps** 

1. Add a `.png` image to the android project folder. 
2. Right-click the original png image. Click Create 9-Patch file in the popup menu list. 
3. The same png image with the suffix `.9.png` is created in the drawable folder. 
4. Double-click the newly created image, there are two panels opened. Left panel is the adjustable 9 patch image, the right panel is the result image after left panel image is adjusted.
5. The first image in right panel shows vertical direction adjust result. The second image in right panel shows horizontal direction adjust result. The third image shows both direction adjust result.
6. To adjust image stretchable area, you can first click a black point in the left panel image border, then you can drag the black point to specify the border stretchable area. Then the right panel will show the adjust result immediately.


---
## Practice

What is the best definition for a nine-patch image?
???

* A stretchable bitmap image but contains an extra 1-pixel-wide border. It must be saved with the extension .9.png, and saved into the res/drawable/ directory of your project.
* Repeatable images reduced to their smallest size and contains an index by adding a 1-pixel border to the image.
* Normal images with an additional two pixel border. This additional two pixel border is used to define a scalable portion of the image. 

---
## Revision

After an image has been converted to a nine-patch, the right panel displays?
???

* The result image after left panel image is adjusted which is the preview area
* Drawing area in which you can edit the lines for the stretchable patches and content area. 
* Defines the stretchable area and displays the preview of the image. 
