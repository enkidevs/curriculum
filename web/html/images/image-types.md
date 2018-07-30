---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.embed-media.0: 10

aspects:
  - introduction
  - workout
---
# Image Types
---
## Content

When using images in your web page or document, whether it's for a logo, product photographs, etc, it is important to know which web image formats to use.

Image formats are divided into 2 categories:
- **Raster images**
  - JPG/JPEG
  - GIF
  - PNG

- **Vector images**
   - SVG
   
##### --> image-types.svg
   
**Raster images**

Raster images consist of a two-dimensional grid of pixels. They do not scale well. If you enlarge or zoom in on a raster image, the quality will decline, and it will look pixelated. Using these images are necessary for creating photographs or other information-dense images. Each raster format compresses the image differently resulting in smaller file sizes.

**JPEG/JPG:** Best for photography and supports millions of colors with the best image compresses, although unseen data is removed from the image during compression making images blur if later they are enlarged. 

**GIF:** Best for graphics with flat colors and no gradients since they only support a maximum of 256 colors. Simple  animations made by displaying a sequence of still shots is only possible with GIFs.

**PNG:** The key factor is data is lost during compression making it perfect when working with images that need re-editing and re-exporting. They also support transparency and animation.

There are two categories of PNG images that help keep file sizes down depending on the number of colors available.
  - PNG 8: limited with a maximum of 256 colors.
  - PNG 24: unlimited colors.

**Vector images**

Vector images are made of thin lines, curves, and shapes, stored in mathematical drawing instructions. No matter how much you zoom in or rescale your image, the clear resolution stays the same.

**SVG:** Has unlimited colors and supports transparency and are best to use when creating a logo, an icon, or any other simple image pattern that may be displayed as multiple screen sizes. Also, SVG images can be directly inserted into an HTML page as code(since they are defined using XML) without being linked to a standalone image file.

**Note: All image formats are animatable by CSS**

---
## Practice

Match the image format with the most accurate description.

??? = best for photographs and other information-dense images.
??? = best for Logos, icons, and simple image patterns.

Graphics that are created in the SVG format are defined by?

???

* raster
* vector
* XML
* compound
* stereo
* CSS
* HTML
* SVX
* Graphical data

---
## Revision

Are GIF images the only image format that can be animated using CSS on a web page?

???

Can SVG images be directly inserted into an HTML page as code without linked to a standalone image file?

???

* No, all images can be animated using CSS.
* Yes
* No images can be animated using CSS.
* Yes, but the web page will not validate.
* Yes, but not without numerous limitations.
* No

---
## Quiz

### How much do you know about HTML image types?

If you don’t need transparency or animation for a photograph, which image format should you use?

* JPG
* PNG
* GIF
* SVG
* PDF
