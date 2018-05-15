# Relative Paths
author: matthew-leach

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - introduction

---
## Content

New content to go here. The author must be updated to match a valid Enki account.

---
## Practice

Match the image code with the path descriptions: 

`<img src="logo.svg">`: ???
`<img src="images/logo.svg">`: ???
`<img src="images/branding/logo.svg">`: ???
`<img src="../logo.svg">`: ???
`<img src="../../logo.svg">`: ???
`<img src="../images/logo.svg">`: ???

* Within the same folder as the web page. 
* Within the images folder. 
* Within the images folder and a subfolder.
* Within the folder above the current folder.  
* Within two folders above the current folder.  
* Within the folder above the current folder and then into the images folder. 

Select the reasons relative links are considered the best for images and files within a website.

+ easy for local management
+ easy to move entire site to other domains
+ link paths do not need to be updated when domains are changed.
- the web pages are protected from others linking to them.

---
## Revision

When is it better to use relative paths over absolute paths?

???

* When the files being linked are managed within the existing website.
* When the files being linked are located within other domains. 
* It is never better to use relative paths. 
* It is always better to use relative paths. 

Working with your own website on your own domain, are absolute links possible to add to the primary navigation buttons of your web site?

???

* Yes, but it is not the best way.
* Yes, this is the best way.
* Yes, but it will not validate. 
* No, it is not possible. 

---
## Quiz

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