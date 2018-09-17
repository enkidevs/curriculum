---
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know
aspects:
  - introduction
  - workout
  - deep
standards:

  python.data-structures-uses.0: 10
  python.data-structures-uses.1: 10
  python.native-types-operations.3: 10
  python.use-iteration-protocol.1: 10

links:

  - '[Functional Programming in Python: built-in functions](https://docs.python.org/3/howto/functional.html#built-in-functions){website}'
  - '[map, filter, and reduce](http://www.bogotobogo.com/python/python_fncs_map_filter_reduce.php){website}'
  - '[Lambda, filter, reduce and map](http://www.python-course.eu/lambda.php){website}'


---

# The `map` Built-in Function

---
## Content

The `map` function is built in to the Python language. Together with the other built-in functions `filter` and `reduce`, `map` allows us to take a functional approach to programming in Python.

`map` applies a given function&mdash;`function_here` in the case below&mdash;iteratively to all items in a given `input_list`[1]. The basic syntax looks like this:

```python
map(function_here, input_list,
  optional_another_input_list, ...)
```

`map` allows us to avoid imperative programming[2] style which often results in more easily legible code. For example, let's say we have a list of point scores in a game, and we want to add 2 to every score. In the imperative programming style, we would do something like this:

```python
scores = [1, 0, 4, 5]
newscores = []
for i in scores:
  newscores.append(i+2)
```

In the functional programming style[3], we can achieve the same functionality by using `map` on the original list, achieving three lines of functionality in one line:

```python
scores = [1, 0, 4, 5]
newscores = list(map(lambda x: x+2, scores))
```

Notice we use the `list` built-in function here, which takes any iterable argument and returns a list of items in the same order. Since we pass `map` to `list`, and `map` already returns a list, `list` creates a copy of this list and returns that. Notice also our use of a *lambda function* which takes any number and adds 2 to it.

Finally, it's good to know that we can pass more than one iterable `input_list` to `map` at once, and&mdash;if the function can take as many arguments at once as there are `input_list`s&mdash;the function is applied to the items from all inputs in parallel. If one input is shorter than the other, it is assumed to be extended to the same length with `None` items. Alternatively, if the function is `None`, then the identity function is assumed.

*Remember, in functional programming, functions can take functions. So, instead of a list of data, `map` may take a list of functions, and output a list of new functions. This gives a sense of how versatile and useful the `map` function can be.*

---
## Practice

Let's say we have a list, called `promises`. We want to `make_good` on all our promises, where `make_good` is a previously-defined function that takes a string. Fill in the blanks in the code below to apply `make_good` to all elements in `promises`.  

```python
promises = ['learn css', 'learn js',
  'buy milk', 'be excellent to each other']
promises = ???(???, ???)
```


* `map`
* `make_good`
* `promises`
* lambda x: x*2
* list
* reduce
* filter

---
## Revision

We are using the map function on two lists of integers at the same time. What is the output from the following code snippet?

```python
scores = [1, 0, 4, 5]
scores2 = [1, 1, 1, 1]
newscores = map(
  lambda x, y : x+y, scores, scores2)
print(newscores)
```

???


* [2, 1, 5, 6]
* [6, 5, 1, 2]
* [1, 0, 4, 5, 1, 1, 1, 1]
* [1, 1, 1, 1, 1, 0, 4, 5]

---
## Footnotes
[1:input_list]
As long as our `input_list` argument given to `map` is of type `iterable`, `map` should work. To check this you can use duck typing or type checking of Abstract Base Classes (ABCs)

[2:Imperative Programming]
Imperative programming, as opposed to declarative programming (of which functional programming is a subtype) is the programming paradigm where statements are used to change a program's state. Imperative style requires certain mechanisms such as direct data modification (mutability) and looping statements. These mechanisms sometimes detrimentally effect readability and efficiency.

An easy rule of thumb is that imperative programming specifies **how** (what steps are taken during execution) a program should operate. This is in contrast to declarative languages which focus on **what** is to be computed instead.

[3:Functional Programming]
As explained in the above footnote, functional programming is a type of declarative language, which focus on **what** is to be computed. Functional programming eschews the idea of state from imperative programming and instead reduces a program down into functions applied on immutable data (data that cannot be directly modified). Notice how in the code example, we use `map` to apply our lambda function to each element in the list, but the items in the original list itself are **not** modified. We take each output from the lambda function and create a new copy of the original list with our new answers. This is the essence of *immutability*, one of the most important concepts of functional languages.
