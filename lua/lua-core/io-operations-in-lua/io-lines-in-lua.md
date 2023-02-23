---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# I/O Lines

---
## Content

The `io.lines` function is a convenient way to read a file line by line. 

It returns an iterator that can be used in a `for` loop to read the file line by line. 

Each iteration of the loop returns the next line of the file until the end of the file is reached. 

This allows you to read large files efficiently without loading the entire file into memory at once. 

The `io.lines` function also handles closing the file automatically, so you don't need to worry about closing it manually.

Here's an example:

```lua
-- Loop through each line in the file
for line in io.lines("myfile.txt") do
  print(line)
end
```

---
## Practice

Finish the code to read a file, line by line, then output each line:
```lua
??? ??? in ???("myfile.txt") do
  ???(line)
end
```

- for
- line
- io.lines
- print

---
## Revision

What is the advantage of using `io.lines` function to read files?

A) It loads the entire file into memory at once for faster processing
B) It allows you to skip lines in the file while reading it
C) It automatically handles closing the file
D) It can read files in reverse order


???

- C
- A
- B
- D
