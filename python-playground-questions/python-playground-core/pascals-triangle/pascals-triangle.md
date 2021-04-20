---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Pascal Triangle

---

## Content

The Pascal triangle is a triangular array of binomial coefficients.

![pascal-triangle](https://img.enkipro.com/9ca1eb25c5fc393b831db1556dcad889.png)

Here is a gif from Wikipedia that demonstrates how each value is calculated:

![wiki-explanation](https://simple.wikipedia.org/wiki/Pascal%27s_Triangle#/media/File:PascalTriangleAnimated2.gif)

Can you write a program that will print the Pascal triangle exactly like in the above gif?

To achieve this, you can use the following concepts:
- variable creation (`age = 22`)
- loops (`for...in:`)

Learning is best when we give it an honest try. Even if we make a mistake, we'll remember it and do better next time.

That being said, if you're not sure how to get started, check out this footnote[1]. 

When you're finished, feel free to share your solution with the community, join in on discussions and upvote solutions from your fellow learners!

Remember, learning is more effective when we do it with others.

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]


Start by creating a variable that will hold the value `5` and another that will hold the value `1`. 

> They will be used to determine how many rows the triangle will have, and the first value has to be `1`.

Next, initiate a `for x in:` loop to go through every number from `1` to `n+1`.

Inside that loop, add another `for y in:` loop to go from `0` to `n-x+1`.

In the second loop, `print` out space and an `end` parameter with an empty character. 

> This will help create a triangle shape

Outside of the second loop, but inside the first one, add another loop to go through every element from `1` to `x+1`.

Inside the third loop, `print` out a `space` followed by the previously created variable that holds `1` along with `sep=''` and `end=''`.

> The `sep` (separator) optional parameter for `print` is used to separate values to be more readable.

> The `end` operator is used to append any string at the end of the output.

After the `print`, update the variable that was initially `1` using the Binomial coefficient:
```python
variable = variable * (x - y) // y
```
The `x` is the first `for` value, and `y` is the second one.

Finally, in the end, outside the two inner loops but inside the first loop, add a `print()`. This will create a new line after every row is calculated.
