---
author: Stefan-Stojanovic

aspects:
  - new

type: normal

category: how to

---

# If else

---
## Content

An `if` statement is used to execute some code if the condition is true.

An `If else` statement is used to execute one code if the condition is true and another if it is `false`.

If we had this `if` in our main function, both statements would be printed out.
```golang
if x := 1 ; x > 0 {
    fmt.Println(x, " is even")
}
fmt.Println(x, " is odd")
}

```
If it was a function we could use only an `if` and return the strings by calling the function in a print statement.

Since this is in our main program we have to use the `if-else` statement.

```golang

if x := 1 ; x > 0 {
    fmt.Println(x, " is even")
} else {
    fmt.Println(x, " is odd")
  }
}
```
Now we would have only 1 output.

### If else statements are stackable

Stackable `if-else` statements are used when you want to execute code on more than 2 conditions.

> 💡 Variables defined in the `if statement` are valid in the scope of all stacked `if-else` statements. 

The code we have above can be improved by using more than 1 `if-else` statement.

```golang
if x := 1 ; x > 0 {
    fmt.Println(x, " is positive")
} else if x < 0 {
        fmt.Println(x, " is negative")
    } else if x == 0 {
        fmt.Println(x, " is neither positive nor negative")
    }
}
```
If we run the program 3 times with 3 different values we get these results:
```golang
0  is neither positive nor negative
1  is positive
-1 is negative
```

---
## Practice

Complete the code in the `if-else` statement using shorthand notation. Then return a positive result if `true` and a negative if `false`.

```golang
if ??? ; x > 0 {
    fmt.Println(x, ???)
} ??? x < 0 {
        fmt.Println(x, ???)
    }
}
```

* x := 1
* " is positive"
* else
* " is negative"
* var x : = 1
* var x = 1