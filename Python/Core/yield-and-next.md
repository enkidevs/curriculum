# yield() and next()
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more about yield and next](https://jeffknupp.com/blog/2013/04/07/improve-your-python-yield-and-generators-explained/)'

---
## Content

As we already know, **Generators** are a way of creating iterable items in **Python**. The behaviour of a **generator** is mainly defined by the `yield()` and `next()` methods.

What happens is the `next()` method can be called on the **generator** we created. Each time the **python interpreter** encounters such a `next()` it will return to the **generator**'s body and execute each expression until it encounters the next `yield()`.

What `yield()` does is, it **evaluates** and **returns** the value of the exception that follows it. **Python** does two interesting actions at this stage:
- it keeps track of the position of the next `yield()`;
- and it stores the state of the **local variables** until the next call.

**Note**, when the **generator**'s `yield()`s have all been evaluated, if another `next()` is encountered the **function** will return the following error:

```
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
StopIteration
```

Let's create a **generator** and see how it behaves:

```
def yrange(n):
    i = 0
    while i < n:
        yield i
        i += 1
```
This **function** generates all natural numbers up to `n`. Let's use the `next()` method now:

```
>>> gen = yrange(3)
>>> gen.next()
0
>>> gen.next()
1
>>> gen.next()
2
>>> gen.next()
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
StopIteration
```

---
## Practice

```
def countdown(num):
    while num > 0:
        yield num
        num -= 1

>>> countdown(10)
>>> countdown.next()
```
What will the output be?
???

* `5`
* `0`
* `1`

---
## Revision

What happens when another `next()` is encountered, after all `yield()`s were evaluated?
???

* An error is thrown.
* The code stops working.
* Nothing, it just continues the execution skiping to the next expression.
