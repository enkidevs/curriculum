---
author: Stefan-Stojanovic

type: normal

category: how-to

---

# If in main() vs Separate Function

---
## Content

Previously, when we discussed `if-else` statements, we had this code in our `main()` function.

```go
if x := 1 ; x > 0 {
  fmt.Println(x, " is positive")
} else {
  fmt.Println(x, " is negative")
}
// Output:
// 1 is positive
```

Now we will show you an example of a modified version of that code in a separate function.

```go
func main() {
  var x int = 3
  // call positiveOrNegative function
  // in a fmt.Print statement
  fmt.Println(x,positiveOrNegative(x))
}

// separate function called positiveOrNegative
// that does the same thing as the above if-else function
func positiveOrNegative(x int) string {
	if x > 0 {
		return "is positive"
	} if x < 0 {

		return "is negative"
	}
	return "is neither positive nor negative"

}
```

As you can see in the example above, this code does the exact same thing as the previous one.

There is a key difference here.

Because we have a separate function that has a `return` statement, we do not have to use an `else`.

We can have only one `if` that returns the first value if the condition is `true` and the second value if it is `false`.

The reason you might want to use the `func` version of the same code is that you can reuse it multiple times without typing new `if-else` statements. 

You can just call the function multiple times with different values!
