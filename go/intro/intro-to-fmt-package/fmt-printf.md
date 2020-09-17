---
author: Stefan-Stojanovic

type: normal

category: how to

---

# The Printf Function

---
## Content

The `fmt.Printf` function is used for outputing to the console.

This function operates a bit differently than the `Print` and `Println` ones.

Unlike those, `fmt.Printf` uses verbs.

The verbs are inserted within the string and all the operands are added after the comma at the end of the statement.

Here is an example:

```go
package main

import (
	"fmt"
)

func main() {
  var name, age, occupation = "Stefan", 26, "Developer"
  	
	fmt.Printf("Hello, my name is %s. I am %d years old and work as a %s.\n", name, age, occupation)
}
```

The output is:

```plain-text
Hello, my name is Stefan. I am 26 years old and work as a Developer.
```

In the above print statement, we are using a total of 3 operands. `name`, `age`, and `occupation`. 

As you can see, we are using `%s` two times and `%d` once. This is because we have two string values and one decimal value.

> LAMP You can use as many of the same data types as you want. Just make sure the order of the operands at the end of the print is correct.

Unlike the `Println` function, `Printf` does not add a new line character at the end. You would have to add the `\n` escape character manually.

