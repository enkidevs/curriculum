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
  context: standalone
---

# Accessing Dictionary Elements


---

## Content

Compared to lists, dictionaries are **non-sequential**. This means that a dictionary item doesn't have a position.

What matters is the key. To extract a value from a dictionary you need to reference its key.

Using the same example as previously, let's extract the `name`:

```python
my_dog = {
  "name": "Artemis",
  "age": 4,
  "color": "yellow"
}

my_dog['name']
# "Artemis"
```

To extract the value, we first write the name of the dictionary (`my_dog`), followed by a key between square brackets. This is usually referred to as **bracket notation**.

Depending on the programming language, you can also extract a value using **dot notation**.

You write the name of the dictionary, followed by a dot (`.`) and then the **key** (`name`). This would work in languages like JavaScript:

```javascript
my_dog.age
// 4
```


---

## Practice

Extract the value for the `color` key using **dot notation**:

```javascript
my_dog = {
  name: "Artemis",
  age: 4,
  color: "yellow"
}

my_dog???
// "yellow"
```

- .color
- ["yellow"]


---

## Revision

Extract the value for the `name` key using **bracket notation**:

```python
person = {
  "name": "Andrei"
}

person?????????
```

- [
- "name"
- ]
- name
- (
- )
