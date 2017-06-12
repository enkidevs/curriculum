# Namespace and scoping.
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://www.programiz.com/python-programming/namespace)'

---
## Content

We can picture a **namespace** as a **Python dictionary** structure, where the **dictionary keys** represent the **names** and the **dictionary values** the **object** itself:

```
namespace={'name_a':object1, ...}
```

Name (also called **identifier**) is simply a name given to an **object**. Everything in **Python** is an object.
**Name** is a way to access the underlying **object**.

Let's consider the following assignment: `a = 2`:
- the **name** here is `a`;
- `2` is the object who's name is `a`.

The tricky part here, is that **Python** can have multiple independent **namespaces**, and **names** can be reused for different **namespaces**:

```
a_namespace={'name_a':object_1, ...}
b_namespace={`name_a`:object_5, ...}
```

For example, every time we call a `for-loop` or define a **function**, it will create its own **namespace**.

The fact that **namespaces** can exist **independently** from each other and the fact that they are structured in a certain **hierarchy** brings us to the concept of **Scope**.

The **scope** defines on which hierarchy level should **Python** search for a particular **variable name**. The interesting part here is in which order does **Python** search all levels of the hierarchy. It uses the **LEGB** rule, which stands for:

```
LOCAL->ENCLOSED->GLOBAL->BUILT IN
```
Where the **arrows** should denote the search order:
- **Local** can be inside a **function** or a **class**;
- **Enclosed** can be inside the *enclosed* function;
- **Global** refers to the **uppermost** level of the executing **script**;
- **Built in** are special names that **Python** reserves for itself.



---
## Practice

Can a script have multiple namespaces?
???

* Yes.
* No.
* Not specified.

---
## Revision

What stands `LEGB` for?
???

* `LOCAL->ENCLOSED->GLOBAL->BUILT IN`
* `LOCAL->EMBEDDED->GLOBAL->BUILT IN`
* `GLOBAL->ENCLOSED->LOCAL->BUILT IN`
