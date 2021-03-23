---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [Coupling and
    Cohesion](https://stackoverflow.com/questions/3085285/cohesion-coupling){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Loose and Tight Coupling


---

## Content

Writing "good code" implies more than properly naming variables or using the right modifiers. It also refers to software design and how easily the application can be maintained and extended.

### Tight Coupling

**Tight coupling** is a syntagm that describes two or more classes that *know more than they should* about each other. In this case, propagating changes requires extra work. Any smartphone that has its battery soldered can be seen as a good example of *tight coupling*: if the battery wears out, *replacing it would be expensive*.

### Loose Coupling

The equivalent of the relation between a smartphone whose battery you could remove yourself and the battery is called **loose coupling**. The implementation details are specific to each class, therefore reducing the dependencies. This design paradigm promotes *single responsibility* and *separation of concerns*.

The difference between the concepts can be explained better through a code example:

```java
// tight coupling
public class Item {
  public String name;
  public float price;
  public int quantity;
}
public class Cart {
  public Item[] items;
}
public class Checkout {
  private Cart cart;
  private float discount;
  public Checkout(Cart cart, float disc) {
    this.cart = cart;
    discount = disc;
  }
  public float totalPrice() {
    float total = 0;
    for(int i = 0;
        i < cart.items.length; ++i) {
      total += cart.items[i].price *
        cart.items[i].quantity;
    }
    total = total*(1 - discount);
    return total;
  }
}

```

In this case, `Checkout` has to know that `Cart` has an array of `Item`s. Moreover, `Checkout` also has to know that an `Item` has a `price` and a `quantity`. This way, any changes made to the any of the `Class` and `Item` variables/methods also require `Checkout` to be changed.

A better approach would be to designate each class to manipulate the data themselves and retrieve the result through methods:

```java
// loose coupling
public class Item {
  public String name;
  public float price;
  public int quantity;
  public float getTotalCost() {
    return price * quantity;
  }
}
public class Cart {
  public Item[] items;
  public float getCartValue() {
    float total = 0;
    for(i = 0 ; i < items.length; ++i) {
      total += items[i].getTotalCost();
    }
  }
}
public class Checkout {
  private Cart cart;
  private float discount;
  public Checkout(Cart cart, float disc) {
    this.cart = cart;
    discount = disc;
  }
  public float toPay() {
    return cart.getCartValue() *
      (1-discount);
  }
}
```

**N.B.** in this example, we've used public variables instead of private ones with getters to reduce the code snippet length. The principle, however, remains the same.


---

## Practice

What is tight coupling?

???

- A high-level of dependency between two classes
- A low-level of dependency between two classes
- A high-level of dependency inside the same class
- A low-level of dependency inside the same class


---

## Revision

Which of the following definitions describes `coupling` the best?

???

- The degree of independence among modules
- The degree of independence inside modules
- The alternative use of private and public variables
- Inheritance dependencies
