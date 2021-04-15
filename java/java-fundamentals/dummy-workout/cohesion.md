---
author: mihaiberq
levels:
  - basic
type: normal
category: must-know
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Cohesion


---

## Content

While *coupling* refers to the relationships between different modules, **cohesion** indicates the degree to which elements of *the same module* belong together.

The higher the cohesion level inside a class gets, the "cleaner" the code is regarded to be. Ideally, a class in which each method manipulates each variable is called to be *maximally cohesive*. In practice, this won't be the case. However, the aim should be for each method to use as many class variables as possible.

When talking about coupling, we've mentioned **separation of concerns**. Each class should have a clear purpose: the `Item` class should represent a product, the `Cart` class should keep track of the contents of the cart and the `Checkout` class to calculate the final price to be paid. By decoupling classes, we also achieve higher cohesion.

That's not always enough though. We could introduce a new variable, `stock`, into the `Item` class, that represents the number of items of that type left in the `Store`:

```java
public class Item {
  public String name;
  public float price;
  public int quantity;
  public static int stock;
  public float getTotalCost() {
    return price * quantity;
  }
}
```

This variable, by no means, ties the `Item` class to a potential `Store` class, as there is no direct link between the two.  However, we delegate `Item` to take care of the number of items that `Store` should rather take care of.

**Low cohesion** usually results in monolithic classes that are difficult to maintain and reduces reusability. Conversely, **high cohesion** results in smaller classes, easier to maintain and extend.

For small projects, these two design patterns are not necessarily to be followed. But, in case of larger projects, where you've got multiple modules/classes depending on each other, starting off on the wrong foot might cause enough overhead for them to justify their usage from the beginning.


---

## Revision

Out of the following, which are the two characteristics of good code?

???

- loose coupling and high cohesion
- tight coupling and low cohesion
- loose coupling and low cohesion
- tight coupling and high cohesion
