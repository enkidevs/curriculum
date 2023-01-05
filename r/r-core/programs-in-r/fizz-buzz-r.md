---
author: Stefan-Stojanovic

tags:
  - introduction
  - discussion
type: normal
category: must-know

---

# FizzBuzz

---

## Content

This program prints the numbers from 1 to 100, but for multiples of three it prints "Fizz" instead of the number, and for multiples of five it prints "Buzz". For numbers which are multiples of both three and five it prints "FizzBuzz":
```r
# Loop through the numbers from 1 to 100
for (i in 1:100) {
  
  # Print "Fizz" for multiples of three
  if (i %% 3 == 0) {
    print("Fizz")
  }
  
  # Print "Buzz" for multiples of five
  if (i %% 5 == 0) {
    print("Buzz")
  }
  
  # Print the number if it is not a multiple of three or five
  if (i %% 3 != 0 && i %% 5 != 0) {
    print(i)
  }
}
```
