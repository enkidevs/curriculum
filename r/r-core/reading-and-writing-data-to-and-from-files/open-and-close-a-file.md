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

# The open & close Functions

---

## Content

The `open` and close functions are useful functions in **R** that allow you to open and close files, respectively. These functions are used in conjunction with other functions, such as readline and writeLines, to read and write data to files in **R**.

Here is the basic syntax of the `open` function:
```r
open(file, mode = "r", blocking = TRUE)
```

- `file` is the name of the file to open.
- `mode` is an optional argument that specifies the mode in which to open the file. The possible values are `"r"` for reading, `"w"` for writing, and `"a"` for appending. The default value is `"r"`.
- `blocking` is an optional argument that specifies whether to open the file in blocking or non-blocking mode. The default value is `TRUE`.

The `open` function returns a file object that you can use to read or write data to the file.

Here is the basic syntax of the close function:
```r
close(connection)
```

- `connection` is the file object to close.

The `close` function closes the specified file object, and frees up any resources that were being used by the file.

Here is an example of how to use the `open` and `close` functions to read a file in **R**:
```r
# Open the file for reading
file <- open("test.txt", "r")

# Read and process the file line by line
while (length(line <- readline(file)) > 0) {
  # Process the line here
}

# Close the file
close(file)
```

In this example, we use the `open` function to open the file `test.txt` for reading, and store the file object in the variable `file`. We then use the `readline` function to read a line of text from the file, and store it in the variable `line`. We use a `while` loop to read and process the file line by line, until the end of the file is reached. Finally, we use the `close` function to close the file.

The `open` and `close` functions are important tools for reading and writing data to files in **R**. You should always remember to close a file when you are done with it, to free up resources and ensure that the file is properly saved.

---
## Practice

To open a file for writing, you should use the `open` function with the mode argument set to ???.

True or false?

"The open function returns a file object that you can use to read or write data to the file."

???


- `"w"`
- `true`
- `false`
- `"r"`
- `"a"`

---
## Revision

To close a file, you should use the close function with the file object ??? as an argument."

True or false?

"The close function closes the specified file object and frees up resources being used by the file."

???

- `connection`
- `true`
- `false`
- `handle`
- `file`



