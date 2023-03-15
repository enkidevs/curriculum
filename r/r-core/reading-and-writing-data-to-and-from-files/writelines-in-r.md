---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# The writelines Function

---

## Content

The `writeLines` function is a useful function in R that allows you to write data to a file. This function is typically used in conjunction with the file function, which creates a file object for reading or writing data to a file.

Here is the basic syntax of the `writeLines` function:
```r
writeLines(text, con = stdout(), sep = "\n", useBytes = FALSE)
```

- `text` is a character vector that specifies the data to write to the file.
- `con` is an optional argument that specifies the connection to use for writing. The default value is `stdout()`, which means that the data is written to the standard output stream.
- `sep` is an optional argument that specifies the character to use as the line separator. The default value is `"\n"`, which means that each element of text is written on a new line.
- `useBytes` is an optional argument that specifies whether to use bytes or characters for the output. The default value is `FALSE`, which means that characters are used.


The `writeLines` function writes the specified data to the specified file or connection.

Here is an example of how to use it:
```r
file <- file("test.txt", "w")
writeLines(c("Hello", "World"), file)
close(file)
```

In this example, we use the `file` function to open the file `test.txt` for writing, and store the file object in the variable `file`. We then use the `writeLines` function to write the character vector `c("Hello", "World")` to the file, using the `file` object as the connection. Finally, we use the `close` function to close the file and free up resources.

The `writeLines` function is a useful function for writing data to files in R. You should always remember to close a file when you are done with it, using the `close` function, to free up resources and ensure that the file is properly saved.

---
## Practice

To write data to a file using the `writeLines` function, you need to specify the data to write as the ??? argument.

- `"text"`
- `"data"`
- `"output"`

---
## Revision

To write data to a file using the `writeLines` function, you need to specify the connection to use for writing as the ??? argument.

- `"con"`
- `"file"`
- `"connection"`