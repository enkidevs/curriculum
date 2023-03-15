---
author: kapnobatai136
type: normal
category: must-know
links:
  - >-
    [Any
    Type](https://www.typescriptlang.org/docs/handbook/2/everyday-types.html#any){documentation}
  - >-
    [Void
    Type](https://www.typescriptlang.org/docs/handbook/2/functions.html#void){documentation}
  - >-
    [Null &
    Undefined](https://www.typescriptlang.org/docs/handbook/2/everyday-types.html#null-and-undefined){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Any, Void, Null, Undefined

---

## Content

### Any

If we want to opt-out of type checking, we can use the `any` type:

```ts
let anythingReally: any = 1;
anythingReally = "one";
anythingReally = [true, false];
```

`any` means that the value can have any type and is useful when you are unsure of the type of the data you're working with.

> 💡 Do not use `any` if you can apply a more specific type because allowing any type defeats the purpose of type-checking

### Void

`void` means that the data **shouldn't** have any type at all. You can think of `void` as the opposite of `any`.

This is usually useful when you want to protect yourself from accidentaly returning a value:

```ts
function enki(): void {
  return "enki";
  // error: Type '"enki"' is not assignable to type 'void'
}
```

### Null & Undefined

Are used to represent lack of value and both have their own types[1]:

```ts
let zilch: undefined = undefined;
let isEqualToNull: null = null;
```

---

## Practice

Will this code produce an error?

```ts
function cheers(): any {
  return null;
}

cheers();
```

???

- No
- Yes

---

## Revision

Using the `any` type is usually not useful because it defeats the purpose of type-checking since it allows all values.

???

- true
- false

---

## Footnotes

[1:Undefined vs Null]
`undefined` is the default value used when no value is assigned.

```ts
let a;
console.log(a); // undefined
```

`null` is the default value used when we want to represent "no value".

```ts
// we decided for some reason
// that "a" doesn't have a value
// and is thus marked as null
let a = null;
```

For example, if we are expecting to get the phone number from a user and they don't give it to us, a sensible default value we can use is `null`.

The reason `null` is more sensible than `undefined` in this case is because `null` means that we determined that a value is missing.

When a value is `undefined` we cannot know if it's `undefined` because we set it as such or because it never had a value in the first place.
