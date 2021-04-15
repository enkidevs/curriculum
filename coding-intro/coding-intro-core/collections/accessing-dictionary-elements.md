---
author: kapnobatai136
type: normal
category: must-know
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

# Accessing Dictionary Elements


---

## Content

Compared to lists, dictionaries are **non-sequential**. This means that a dictionary item doesn't have a position.

What matters is the key. To extract a value from a dictionary you need to reference its key.

Using the same example as previously, let's extract the `name`:

```plain-text
my_dog = {
  name: "Artemis",
  age: 4,
  color: "yellow"
}

my_dog.name
// "Artemis"
```

To extract the value, we first write the name of the dictionary (`my_dog`), followed by a dot (`.`) and then the **key** (`name`). This is commonly referred to as **dot notation**.

Depending on the programming language, you can also extract a value using a key between square brackets:

```plain-text
my_dog["age"]
// 4
```

This is usually referred to as **bracket notation**.


---

## Practice

Extract the value for the `color` key using **dot notation**:

```plain-text
my_dog = {
  name: "Artemis",
  age: 4,
  color: "yellow"
}

my_dog??????
// "yellow"
```

- .
- color
- ,
- "yellow"


---

## Revision

Extract the value for the `name` key using **bracket notation**:

```plain-text
person = {
  name: "Andrei"
}

person?????????
```

- [
- "name"
- ]
- name
- (
- )
