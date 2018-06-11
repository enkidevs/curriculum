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
  - '[Article for absolute vs relative link paths](https://www.coffeecup.com/help/articles/absolute-vs-relative-pathslinks/){website}'
  
---
# Absolute Paths
---
## Content

When wanting to link a file or a picture from some website to your website, you have to do it with an absolute link path.

Example image:
```
<p> Apple logo </p>
<img 
  src="http://www.apple.com/logo.svg"
  alt="Apple logo">
```

Example link:
```
<p> Google </p>
<a 
  href="http://www.google.com">
  Google
</a>
```
An absolute path is a full URL to an internet file or picture.
Only absolute paths can be used when linking to images/files of another website. 

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




