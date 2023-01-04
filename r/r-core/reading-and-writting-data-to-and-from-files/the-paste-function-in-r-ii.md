---
author: Stefan-Stojanovic

tags:
  - introduction
  - discussion
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone

---

# More on the paste Function

---

## Content

The `paste` function has several optional arguments that allow you to customize the output. For example, you can use the collapse argument to specify a separator to use between the elements of a vector:
```r
z <- c("red", "green", "blue")
paste(z, collapse = ", ")  
# "red, green, blue"
```

You can also use the sep and collapse arguments together to specify different separators for different levels of the input:
```r
z <- list(c("red", "green"), "blue")
paste(z, sep = ":", collapse = ", ")
# "red:green, blue"
```

Finally, you can use the quote argument to specify whether or not to surround the output with quotation marks:

```r
paste("Hello", "world!", quote = TRUE)  
# "\"Hello\" \"world!\""
paste("Hello", "world!", quote = FALSE) 
# "Hello world!"
```







