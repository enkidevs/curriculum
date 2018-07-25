---
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction
  - workout
standards:
  python.functions.3: 10


links:

  - '[More on namespace](https://www.programiz.com/python-programming/namespace){website}'


---

# Namespace and scoping

---
## Content

As briefly mentioned before, the **namespace** is the *mapping* between available objects and their referencing names.

We can picture a **namespace** as a Python dictionary structure, where the *keys* represent the **names** and the *values* the **object itself**:

```python
namespace={'name_a':object1, ...}
```

The key (i.e. name_a) or **identifier** is simply a name given to its mapped **object** (i.e. `object1`). Keep in mind that in Python everything is an **object** so this mapping will apply to any **item**.

The tricky part here, is that Python can have multiple independent namespaces, and names can be reused for different namespaces:

```python
a_namespace={'name_a': object_1, ...}
b_namespace={'name_a': object_5, ...}
```

For example, every time we call a `for-loop` or define a function, an independent namespace is created.

The fact that namespaces can exist *independently* from each other and the fact that they are structured in a certain **hierarchy** brings us to the concept of **scope**.

In computer programming, the **scope** of a **name binding** is the region of a program where the **binding** is valid: where the **name** can be used to refer to the **entity**.

The **scope** defines on which hierarchy level should the interpreter search for a particular variable name. It uses the **LEGB** rule, which stands for:

```
LOCAL->ENCLOSED->GLOBAL->BUILT IN
```
Where the **arrows** should denote the search order:
- *Local* can be inside a function or a class
- *Enclosed* can be inside the *enclosed* function
- *Global* refers to the **uppermost** level of the executing script
- *Built in* are special names that Python reserves for itself

To make this easier to understand consider the following example:

```python
def f():
    s = 'A local variable'
    print(s) # print() is built-in
    def g():
        x = 'An enclosed variable'
        print(x) # print() is built-in
    g()


r = 'A global variable'
f()
print(r) # print() is built-in
```
The following output will be generated:

```
A local variable
An enclosed variable
A global variable
```

---
## Practice

Consider the following snippet. On which scoping level of hierarchy do you think `z` is?


```python
def foo(x):
    return x*x

z = foo(4)
```
???


* Global
* Enclosed
* Local
* Built-in

---
## Revision

Is the variable `a` still in scope when it is printed?

```python
def foo():
    a = "Hello World"
    return a

b = foo()
print(a)
```
???


* No
* Yes
* It can't be determined.
