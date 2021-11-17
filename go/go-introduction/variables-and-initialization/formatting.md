---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - '[Go fmt](https://blog.golang.org/gofmt){documentation}'
  - >-
    [Why gofmt is Widely
    Accepted](https://utcc.utoronto.ca/~cks/space/blog/programming/GoWhyGofmtAccepted){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Formatting


---

## Content

The **Go** language uses a formatting tool called `gofmt`.

To format your code using this tool you can run either of these two commands:

```go
gofmt -w yourcode.go
```

or

```go
go fmt path/to/your/package
```

Alternatively, if you are in a **Go** playground, you can use the `Format` button.

![go-playground-formatting](https://img.enkipro.com/9bf5e016f114b46c7d59e4a223221537.png)

> 💡 Both code examples above do the same as the `Format` button.

As you can see in the image above, the formatting of **Go** programs has relatively large indentations.

> ⚠️ These indentations should always be done via tabs and never spaces (unless necessary).  

It is a convention in the **Go** community to format all code the same way. 

This was inspired by large codebases at Google to make it easier for programmers to collaborate without worrying about tiny details like indentation.

However, because our course is taught on a mobile platform, having these large indentations would make the code blocks too wide, reducing readability.

So, for easier readability, we will use smaller indentations in this course.

> ⚠️ You should always format your code before building it.


---

## Practice

Format the `file-name.go` package using the `gofmt` command.

```go
??? ??? ???
```

- gofmt
- -w
- file-name.go


---

## Revision

Format the `file-name.go` package found in the `/path/to/directory` using the `gofmt` command

```go
??? ??? ???
```

- go 
- fmt
- /path/to/directory
  
