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

As you might've already guessed, you can use type when you want to opt-out of type checking.

```ts
let anythingReally: any = 1;
anythingReally = 'one';
anythingReally = [true, false];
```

Use this type when you are unsure of the incoming data shape, or when transitioning from JavaScript to TypeScript.

### Void

Opposite of `any`, meaning that the data **shouldn't** have any type at all. This is usually used as the return type of a function. Don't worry if this is a bit confusing now, we will explain it in the following missions. For now, know that you can only assign `undefined` as a value if the type is `void`[1]:

```ts
let nothing: void = undefined;
```

### Null & Undefined

Both have their own types in TS, but they are quite useless on their own.

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
## Footnotes

[1:Exception]
If your `tsconfig.json` file doesn't specify `--strictNullChecks`, then you can also assign `null` to any variable with the `void` type:

```ts
let exception: void = null;
```