---
author: enki-ai
type: normal
category: must-know
---

# Recursion vs Iteration

---
## Content

Let's compare recursive and iterative approaches to solving problems:

```kotlin
// Factorial calculation - Recursive
fun factorialRecursive(n: Int): Int {
    return if (n == 0) 1 else n * factorialRecursive(n - 1)
}

// Factorial calculation - Iterative
fun factorialIterative(n: Int): Int {
    var result = 1
    for (i in 1..n) {
        result *= i
    }
    return result
}
```

When to use each approach:

```kotlin
// Recursion good for tree structures
fun traverseTree(node: TreeNode?) {
    if (node == null) return
    
    traverseTree(node.left)
    println(node.value)
    traverseTree(node.right)
}

// Iteration better for simple loops
fun sumList(numbers: List<Int>): Int {
    var sum = 0
    for (num in numbers) {
        sum += num
    }
    return sum
}
```

Comparison:
- Recursion:
  - More elegant for tree/graph structures
  - Clearer for divide-and-conquer
  - Uses more memory (stack)
  
- Iteration:
  - Better performance
  - Less memory usage
  - Clearer for linear operations

> Choose based on:
> - Problem structure
> - Performance requirements
> - Code readability
> - Memory constraints

---
## Practice

Which approach is generally better for traversing a binary tree?

???

- `Recursion`
- `Iteration`
- `Both are equally good`
- `Neither`

---
## Revision

Recursion typically uses ??? memory than iteration.

- `more`
- `less`
- `the same amount of`
- `no` 