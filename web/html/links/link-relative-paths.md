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
# Relative Paths
---
## Content

When wanting to link to other web pages or images from a web page located in the same file directory, it is best to use relative link paths.

A relative path is used to point to a file or the location of the file you want to be linked in relation to the webpage being viewed. 

Example of linking a logo located within the same directory as the web page:
```
<img src="logo.svg">
```

Example of linking a logo located within the `images` folder:
```
<img src="images/logo.svg">
```
**Note that the `images` folder is located within the current directory, which is the same directory as the website.**

More example of how you can link with relative paths:
 - `<img src="images/branding/logo.svg">`: Link within the images folder and a subfolder.
 - `<img src="../logo.svg">`: Link within the folder above the current folder.  
 - `<img src="../../logo.svg">`: Link within two folders above the current folder.  
 - `<img src="../images/logo.svg">`: Link within the folder above the current folder and then into the images folder. 

Furthermore, using relative link paths to link files located within your server domain is much better and faster than using absolute(full URL) link paths. The reason for this is, when using relative paths, the browser knows to only look within the specified folder/file path. Whereas when using absolute paths, the browser would go to the linked file like it is located outside of the page, meaning it would load the webpage again just this time with the desired file which is inconvenient and time-consuming.

Also, using relative links has a few more benefits:
  - easier to move an entire site to a different domain
  - easy for local management
  - link paths do not need to be updated when the domain is changed.
 
Relative links can never be used to link to pages or images located on other web servers. 

---
## Practice

Match the image code with the path descriptions: 

`<img src="logo.svg">`: ???
`<img src="images/logo.svg">`: ???
`<img src="images/branding/logo.svg">`: ???
`<img src="../logo.svg">`: ???
`<img src="../../logo.svg">`: ???
`<img src="../images/logo.svg">`: ???

Select the reason relative links are not considered the best for images and files within a website.

???

* Within the same folder as the web page. 
* Within the images folder. 
* Within the images folder and a subfolder.
* Within the folder above the current folder.  
* Within two folders above the current folder.  
* Within the folder above the current folder and then into the images folder. 
* the web pages are protected from others linking to them.
* easy for local management
* easy to move the entire site to other domains
* link paths do not need to be updated when domains are changed.


---
## Revision

When is it better to use relative paths over absolute paths?

???

Working with your own website on your own domain, are absolute links possible to add to the primary navigation buttons of your website?

???

* When the files being linked are managed within the existing website.
* `Yes, but it is not the best way.`
* When the files being linked are located within other domains. 
* It is never better to use relative paths. 
* It is always better to use relative paths. 
* `Yes, this is the best way.`
* `Yes, but it will not validate. `
* `No, it is not possible. `

---
## Quiz

### How much do you know about relative paths?

What is required within relative paths for images or page links?

???

* File & folder names within the current website organization. 
* "http://" is needed before the path location.
* The web domain is needed within the path location.
* Nothing is required within relative paths.

---
## Game

Determining if the path is a relative or absolute path.

Relative:Absolute

```false
index.html
%exp
index.html is a relative path as it doesn't link to the full web path using http://webdomain.com/filename.
%

contact.html
%exp
contact.html is a relative path as it doesn't link to the full web path using http://webdomain.com/filename.
%

../services.html
%exp
../services.html is a relative path as it doesn't link to the full web path using http://webdomain.com/filename.
%

travel/fiji/group-photo.html
%exp
travel/fiji/group-photo.html is a relative path as it doesn't link to the full web path using http://webdomain.com/filename.
%

/branding/logo.svg
%exp
/branding/logo.svg is a relative path as it doesn't link to the full web path using http://webdomain.com/filename.
%

/help/articles/how-do-i-set-up-a-webpage.html
%exp
/help/articles/how-do-i-set-up-a-webpage.html is a relative path as it doesn't link to the full web path using http://webdomain.com/filename.
%
```

```true

http://www.adobe.com
%exp
http://www.adobe.com is an absolute path as it links using a full web URL.
%

http://www.mars.com/snickers/
%exp
http://www.mars.com/snickers/ is an absolute path as it links using a full web URL.
%

http://www.apple.com/images/logo.svg
%exp
http://www.apple.com/images/logo.svg is an absolute path as it links using a full web URL.
%

http://www.enkipro.com/help/articles/how-do-i-set-up-a-webpage.html
%exp
http://www.enkipro.com/help/articles/how-do-i-set-up-a-webpage.html is an absolute path as it links using a full web URL.
%
```
