---
author: adamMontgomerie
type: normal
category: tip
tags:
  - oop
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=15){website}
---

# Creating a defensive copy of an object to guarantee immutability


---

## Content

In order for an object to be immutable, it should not be possible to change its state after it has been constructed. Immutable objects can have mutable objects as fields. In order to prevent the mutable object field from being changed, a defensive copy must be made when the value of the field is set or whenever the field is passed outside of the class.

This example shows a constructor for the class 'Person'. `dateOfBirth` is a field which is an object of type `Date`. `Date` is mutable, so it is possible for its value to be changed from outside of the Person class. This means that 'Person' is not immutable.

```java
public Person(String name, int age, 
  Date dateOfBirth) {
  this.name = name;
  this.age = age;
  this.dateOfBirth = dateOfBirth;
}
```

In order to make 'Person' immutable we need to use a defensive copy.

```java
this.dateOfBirth = 
  new Date(dateOfBirth.getTime());
```

Rather than assigning the existing `dateOfBirth` object to our new 'Person' object, we create a copy of that object inside the class.
