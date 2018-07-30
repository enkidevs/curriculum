---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

links:
  - '[CodePen: Absolute Path to Link](https://codepen.io/enkidevs/pen/yqbBBG){code}'
  - '[Article for absolute vs relative link paths](https://www.coffeecup.com/help/articles/absolute-vs-relative-pathslinks/){website}'

---
# Absolute Paths
---
## Content

When wanting to link a file or a picture from your website to another website, it must use an absolute link path.

Example link:
```html
<a
  href="http://www.google.com">
  Google
</a>
```

![link-google](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2254%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2254%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%230001EE%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%2233%22%3EGoogle%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%230001EE%22%20stroke-linecap%3D%22square%22%20d%3D%22M20.5%2034.5h51%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/yqbBBG)-->


Example image:
```html
<img
  src="http://www.apple.com/logo.svg"
  alt="Apple logo">
```

![link-apple](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2261%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2261%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23000%22%20fill-rule%3D%22nonzero%22%20d%3D%22M52.86782%2042.17214c-.60274%201.3975-1.31619%202.68387-2.1428%203.86655-1.12676%201.6123-2.04932%202.72832-2.76031%203.34805-1.10215%201.01725-2.28303%201.53823-3.54756%201.56785-.9078%200-2.00258-.25925-3.27694-.78516-1.27855-.52344-2.45353-.78269-3.52788-.78269-1.12676%200-2.33519.25925-3.62776.7827-1.29454.5259-2.3374.79997-3.13474.82713-1.21262.05185-2.4213-.48394-3.62777-1.60983-.77003-.67405-1.73318-1.82957-2.887-3.46656-1.23796-1.7481-2.25573-3.7752-3.05307-6.08624C20.42807%2037.33772%2020%2034.92051%2020%2032.58034c0-2.68066.57716-4.9927%201.73319-6.93017.90854-1.55624%202.11722-2.78386%203.62997-3.68507%201.51276-.9012%203.1473-1.36045%204.90754-1.38983.96316%200%202.2262.299%203.7958.88664%201.56515.5896%202.57013.88861%203.01074.88861.32942%200%201.44584-.34962%203.33845-1.04663%201.78977-.6464%203.30031-.91405%204.53778-.80862%203.3532.2716%205.87241%201.59822%207.54779%203.98827-2.99895%201.82365-4.48243%204.3779-4.4529%207.65459.02706%202.55227.94962%204.67615%202.76276%206.36252.8217.7827%201.73934%201.38761%202.7603%201.81723-.2214.64442-.45512%201.26169-.7036%201.85426zm-7.69048-30.37192c0%202.00046-.7282%203.86828-2.1797%205.59712-1.75164%202.05524-3.87034%203.24286-6.16789%203.05546a6.24977%206.24977%200%200%201-.04625-.758c0-1.92044.83301-3.97568%202.31231-5.65613.73854-.85083%201.67783-1.5583%202.8169-2.12265%201.13659-.55593%202.21168-.86338%203.2228-.91602.02953.26742.04183.53487.04183.8002v.00002z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

An absolute path is a full URL to an internet domain and then the appropriate file or picture. Only absolute paths can be used when linking to images/files of another website.

Example of absolute paths:
 - `http://www.adobe.com`
 - `http://www.apple.com/images/logo.svg`
 - `http://www.enkipro.com/help/articles/how-do-i-set-up-a-webpage.html`

**Note: For the absolute path link to work, you have to provide the domain name of the website, including the `http:// `.**

There is one downfall when it comes to using absolute link paths. You have no control over these files because they are located on other domains, and if they are moved, your links will break. 

---
## Practice

Select the absolute path from this list:

???

What is the biggest downfall to using absolute paths?

???

* `http://www.enkipro.com/help/articles/how-do-i-set-up-a-webpage.html`
* You don’t have control over files on other domains and if they are moved, your links will break.
* `contact.html`
* `../services.html`
* `travel/fiji/group-photo.html`
* The paths tend to be longer and add to the filesize of a web page.
* Those paths have lower search engine visibility.
* For downloadable files, absolute paths will not work.
* Relative paths will load the link faster.

---
## Revision

When web pages or images are located on other web domains, what is the best way to connect them to your own web page?

???

Only absolute paths can be used when linking to images/files of another website.

???

* absolute paths
* True
* relative paths
* filename paths
* directory path
* False

---
## Quiz

### How much do you know about absolute paths?

What is required within absolute paths for images or page links?

???

* The domain name of the website, including http://
* File and folder names within the current website organization.
* Forward slashes (/) separating folders.
* Nothing is required within absolute paths.
