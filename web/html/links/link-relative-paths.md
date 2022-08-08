---
author: Stefan-Stojanovic
type: normal
category: must-know
tags:
  - introduction
links:
  - >-
    [Absolute vs Relative
    Paths](https://www.coffeecup.com/help/articles/absolute-vs-relative-pathslinks/){article}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Relative Paths


---

## Content

When wanting to link to other web pages or images from a web page located in the same file directory, it is best to use relative link paths.

A relative path is used to point to a file or the location of the file you want to be linked in relation to the webpage being viewed.

Example of linking a logo located within the same directory as the web page:

```html
<img src="logo.svg">
```

Example of linking a logo located within the `images` folder:

```html
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

Can relative paths be used to link to images and files located on other web servers?

???

- Within the same folder as the web page.
- Within the images folder.
- Within the images folder and a subfolder.
- Within the folder above the current folder.  
- Within two folders above the current folder.  
- Within the folder above the current folder and then into the images folder.
- No 
- yes


---

## Revision

When is it better to use relative paths over absolute paths?

???

Working with your own website on your own domain, are absolute links possible to add to the primary navigation buttons of your website?

???

- When the files being linked are managed within the existing website.
- `Yes, but it is not the best way.`
- When the files being linked are located within other domains.
- It is never better to use relative paths.
- `Yes, this is the best way.`
- `No, it is not possible. `


---

## Quiz

### How much do you know about relative paths?


What is required within relative paths for images or page links?

???

- File & folder names within the current website organization.
- "http://" is needed before the path location.
- The web domain is needed within the path location.
- Nothing is required within relative paths.
