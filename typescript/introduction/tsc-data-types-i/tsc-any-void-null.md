---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Any, Void, Null

---
## Content

### Any

If we want to opt-out of type checking, we can use the `any` type:

```ts
let anythingReally: any = 1;
anythingReally = 'one';
anythingReally = [true, false];
```

`any` means that the value can have any type and is useful when you are unsure of the type of the data you're working with.

Do not use `any` if you can apply a more specific type because allowing any type defeats the purpose of type-checking.

### Void

`void` is the opposite of `any`. It means that the data **shouldn't** have any type at all. 

This is usually used as the return type of a function that does not return anything. 

Don't worry if this is a bit confusing now, we'll explain it in future workouts. For now, know that you can only assign `undefined` as a value if the type is `void`[1]:

```ts
let nothing: void = undefined;
```

### Null & Undefined

Both have their own types in TS:

```ts
let zilch: undefined = undefined;
let isEqualToNull: null = null;
```

---
## Practice

Which value assignment will throw an error?

```ts
let a: any = undefined;

let b: void = undefined;

let c: null = undefined;

let d: undefined = undefined;
```

???

* c
* a
* b
* d

---
## Revision

Using the `any` type is usually not useful because it defeats the purpose of type-checking since it allows all values.

???

* true
* false

---
## Footnotes

[1:Exception]
If your `tsconfig.json` file doesn't specify `--strictNullChecks`, then you can also assign `null` to any variable with the `void` type:

```ts
let exception: void = null;
```
