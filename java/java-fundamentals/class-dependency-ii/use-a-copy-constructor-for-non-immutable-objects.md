---
author: adamMontgomerie
type: normal
category: best-practice
tags:
  - object-construction
  - object-copying
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=71){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Use a copy constructor for mutable objects


---

## Content

Rather than using `clone`, a simpler way to create a copy of an object is to use a copy constructor. For example, a class 'Person' with this constructor:

```java
public Person(String name, int age) {
  this.name = name;
  this.age = age;
}
```

could have this copy constructor:

```java
public Person(Person person) {
  this(person.getName(), person.getAge());
}
```

This would create another Person object with the same name and age properties. However, it is important to note that creating a copy is unnecessary for immutable objects, so using a copy constructor like this should only be done for objects whose state can be changed. For example, if the Person class had this method:

```java
public void setName(String name) {
  this.name = name;
}
```

Then it is preferred to use a copy constructor.


---

## Practice

A copy constructor provides a simpler and safer way to create a copy of an object than using what method?

???

- clone()
- duplicate()
- construct()
- constructor()


---

## Revision

Which of the following code snippets is the correct copy constructor for the ‘Address’ constructor:

```java
// Address Constructor  
public Location(String country,
                String city) {
  this.country = country;
  this.city = city;
}
// Option A
public Location(Location loc) {
  currentObj(loc.getCountry(),
             loc.getCity());
}
// Option B
public Location(Location loc) {
  this(loc.getCountry(),
       loc.getCity());
}
// Option C
public Location(Location loc) {
  now(loc.getCountry(),
      loc.getCity());
}
```

???

- Option B
- Option C
- Option A
