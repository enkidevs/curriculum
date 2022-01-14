---
author: Aaron7Sun
type: normal
category: tip
tags:
  - speed-up-code
notes: ''
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Efficient concatenation with join()


---

## Content

With strings being immutable in Python, there are certain advantages and disadvantages to consider.

An advantage is represented by the fact that strings can be used directly as keys in dictionaries. On top of that, string copies can be shared among multiple variable bindings.

One disadvantage is that if you want to amend any part of an existing string, you must create a new one with that change. This means that programs can easily lead to creation of many unnecessary strings, which is quite inefficient and can significantly increase the memory usage.

Let's see a few examples of how to update strings more efficiently and prevent unnecessary memory usage.

For instance, a naive approach to combining a list of strings into a single string would be to use a loop and string concatenation[1]:

```python
s = ""
for substring in list:
  s += substring
```

The above code is actually a common mistake when building large strings[2]. Instead, use:

```python
s = "".join(list)
```

Similarly, in some more complex examples, if you are doing:

```python
s = ""
for x in list:
  s += some_function(x)
```

A better and faster way is:

```python
slist = [some_function(elt) for elt in somelist]
s = "".join(slist)
```


---

## Practice

Fill in the following code snippet such that it will concatenate all strings in the list:

```python
a = ["This", "is", "a", "list"]

a = ???.???

```

- ""
- join(a)
- concatenate(a)
- list
- a


---

## Revision

What will the following code snippet output:

```python

l = ["E","n","k","i"]

l = "".join(l)

# ???
```


- Enki
- E n k i
- E,n,k,i


---

## Footnotes

[1:String Concatenation]
In computer programming, string concatenation represents the operation or process of joining two or more character strings in a series. For example, if we wanted to concatenate `"En"` and `"ki"` we would get `"Enki"`. Notice how there is no gap between our character strings. If you wanted to include a space, you would simple have to concatenate a `" "`. If we concatenated `"Enki"`, `" "`, and `"is fun"` we would get `"Enki is fun"`.

[2:Efficient Concatenation]
To understand why iteratively creating a string with `+=` is inefficient, let's take a look at this example:

```py
x = 'en'
x += 'ki' # 'enki' 
x += 'enki' # 'enkienki'
```

In this example, Python first allocates the memory for `'en'`, then again for `en` and `ki` (to make `enki`), then again for `en` and `ki` and `enki` (to make `'enkienki'`). This means that each string from the previous concatenation recreates more memory for the next concatenation even though it already had enough memory to fit in. In this scenario, instead of just creating the memory for `enkienki`, we would end up creating that memory plus the memory needed for `en` and `enki` during prior concatenations. 
When concatenating a small number of strings this wouldn't pose much of a problem, but what would happen if the total number of strings that need to be concatenated was 1000? Since each substring gets re-created for all concatenations that follow it, the first substring would get created 1000 times, the second one 999 times, the third one 998 times, and so forth, which averages to about ~500 concatenations per substring. This means that concatenation of 1000 strings  will end up with approximately 500,000 concatenations! In general terms, concatenating `N` strings would lead approximately to `(N*N)/2` concatenations, which is extremely inefficient. This is why we must handle Python's string immutability with caution.

On the other hand, the `join()` method uses some internal tricks to find out the memory that needs to be allocated ahead of time and copies each substring to the new buffer. This means that each string is copied only once, making the operation ideally efficient. Concatenating `N` strings using `join()` leads to `N` concatenations, which is what one would expect.

Check out this [Stack Overflow thread](https://stackoverflow.com/a/39312172) for more information.
