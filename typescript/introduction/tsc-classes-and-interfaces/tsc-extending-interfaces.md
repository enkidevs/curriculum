---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

links:
  - '(Play with interfaces)[https://www.typescriptlang.org/play/index.html?ssl=1&ssc=1&pln=16&pc=88#code/JYOwLgpgTgZghgYwgAgKIgNbGQbwFDLID0RycIyA9gA5jCUhwA2yClAtuxOAax1+AD8ALmQBnMFFABzANy8SZZFAhwAJlRBMAnsgCuUJrxXqGO-YdESpIOXgC+ePEwhhkEUeizIAvLgWkAO4ocCqa5upqMshgABYoBkaEiiCUyCAQEBpgaZFKbJzcYAHIAEYQCHB6YijAYADkYlS09IxJFkyi9dxYAHQF9Q5OipUgqW6BUpAxucqqama6iXgQvYm+yPXjzEyUwWr9HPWyxKQAwuTjZGJiwNIUOZuJ9WUVVTXIdZ9NcHPqALSLZDUKA0aBgbS9IA]{website}'

---

# Extending Interfaces

---
## Content

Interfaces can extend one another to combine data.

```ts
interface Learning {
  motivation: number;
}

// this interface will have all of the
// data from the Learning interface
// plus its own data
interface TypeScriptSkill extends Learning {
  teacher: string;
  student: string;
}

let skill: TypeScriptSkill = {
  teacher: "Enki",
  student: "Me",
  motivation: 100,
};

console.log(
  "The secret of getting ahead is getting started"
);
console.log(
  `${skill.teacher} motivates ${skill.student} ${skill.motivation}%`
);
// "Enki motivates Me 100%
```

This allows you to combine information from one interface into another and organize the structures into reusable shapes that makes the most sense for your program.

An interface can extend multiple interfaces and combine all of their data:

```ts
interface Learning {
  motivation: number;
}

interface TypeScriptSkill {
  teacher: string;
  student: string;
}

interface EnkiLearnsTS
  extends Learning,
    TypeScriptSkill {
  isFun: boolean;
}

let skill: EnkiLearnsTS = {
  teacher: "Enki",
  student: "Me",
  motivation: 100,
  isFun: true,
};

console.log(
  `It always seems impossible until it's done`
);
console.log(
  `${skill.teacher} motivates ${skill.student} ${skill.motivation}% to have fun? ${skill.isFun}`
);
// "Enki motivates Me 100% to have fun? true
```

---
## Practice

Fill in the gaps such that the code compiles without errors:

```ts
interface Speaking {
  volume: number;
}

interface Walking {
  speed: number;
}

interface Human ??? Speaking??? {
  name: string;
}
```

* extends
* , Walking
* and Walking
* with Walking
* implements

---
## Revision

Interfaces can extend one another to combine data.

The require rules is that an interface can only extend one other interface.

???

* False
* True
