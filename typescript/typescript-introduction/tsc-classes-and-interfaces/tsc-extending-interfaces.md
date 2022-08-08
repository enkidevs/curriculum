---
author: nem035
type: normal
category: must-know
links:
  - >-
    [Play with extending
    interfaces](https://repl.it/@enkicontent/TypeScriptExtendingInterfaces){website}
  - >-
    [Interface vs Type
    Alias](https://medium.com/@martin_hotell/interface-vs-type-alias-in-typescript-2-7-2a8f1777af4c){article}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Extending Interfaces

---

## Content

Interfaces can be combined by extending one another.

```ts
interface Skill {
  name: string;
}

// this interface will have all of the
// data from the Skill interface
// plus its own data
interface TypeScriptSkill extends Skill {
  teacher: string;
  student: string;
}

let skill: TypeScriptSkill = {
  teacher: "Enki",
  student: "me",
  name: "TypeScript",
};

console.log(
  "The secret of getting ahead is getting started"
);
console.log(
  `${skill.teacher} is teaching ${skill.student} ${skill.name}`
);
// "Enki is teaching me TypeScript"
```

This allows you to combine information from one interface into another and organize the types into reusable shapes that makes the most sense for your program.

In fact, more than one interface can be extended by writing them one after another separated by a comma:

```ts
interface Skill {
  name: string;
}

interface Habit {
  when: string;
}

// to master a skill
// we need to build a habit
// of practicing it
interface SkillMastery extends Skill, Habit {
  isFun: boolean;
}

let ts: SkillMastery = {
  name: "TypeScript",
  when: "every day",
  isFun: true,
};

console.log(
  `It always seems impossible until it's done`
);
console.log(
  `Learning ${ts.name} ${ts.when} is fun? ${ts.isFun}`
);
// "Learning TypeScript every day is fun? true"
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

interface Human
  ??? Speaking, Walking {
  name: string;
}

let human = {
  volume: ???,
  speed: 19,
  name: 'Tony Hoare'
};
```

- extends
- 33
- '33'
- with
- implements
- extend

---

## Revision

An interface can only extend one other interface.

???

- False
- True
