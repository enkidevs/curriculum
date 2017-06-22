# Namespace and scoping.
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[more on namespace](https://www.programiz.com/python-programming/namespace)'

---
## Content

We can picture a **namespace** as a Python dictionary structure, where the **dictionary keys** represent the **names** and the **dictionary values** the **object** itself:

```
namespace={'name_a':object1, ...}
```

The key (i.e. name_a) or **identifier** is simply a name given to its mapped **object** (i.e. object1). Keep in mind that in Python everything is an **object** so this mapping will apply to any **item**.

Hence, the underlying **objects** of your program can/will be accessed through their **name**.


Let's consider the following assignment: `a = 2`:
- the **name** here is `a`;
- `2` is the object who's name is `a`.

The tricky part here, is that **Python** can have multiple independent **namespaces**, and **names** can be reused for different **namespaces**:

```
a_namespace={'name_a':object_1, ...}
b_namespace={`name_a`:object_5, ...}
```

For example, every time we call a `for-loop` or define a **function**, it will create its own **namespace**.

The fact that **namespaces** can exist **independently** from each other and the fact that they are structured in a certain **hierarchy** brings us to the concept of **scope**.

In computer programming, the **scope** of a **name binding** is the region of a program where the **binding** is valid: where the **name** can be used to refer to the **entity**.

The **scope** defines on which hierarchy level should **Python** search for a particular **variable name**. The interesting part here is in which order does **Python** search all levels of the hierarchy. It uses the **LEGB** rule, which stands for:

```
LOCAL->ENCLOSED->GLOBAL->BUILT IN
```
Where the **arrows** should denote the search order:
- **Local** can be inside a **function** or a **class**;
- **Enclosed** can be inside the *enclosed* function;
- **Global** refers to the **uppermost** level of the executing **script**;
- **Built in** are special names that **Python** reserves for itself.

To make this easier to understand consider the following example:

```
def f():
    s = "A local variable"
    print(s) # print() is built-in
    def g():
        x = "An enclosed variable"
        print(x) # print() is built-in


r = "A global variable"
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

```
def foo(x)
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
```
def foo()
    a = "Hello World"
    return a

b = foo()
print(a)
```
???

* No
* Yes
* It can't be determined.
