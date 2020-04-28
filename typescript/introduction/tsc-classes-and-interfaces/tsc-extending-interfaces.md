---
author: nem035
type: normal
category: must-know
aspects:
  - introduction
links:
  - '[Play with interfaces](https://www.typescriptlang.org/play/index.html?ssl=1&ssc=1&pln=28&pc=1#code/JYOwLgpgTgZghgYwgAgMoGtgBsvIN4BQyyIcAthAFzIDOYUoA5gNwEC+BBoksiKAEnABGwMPiLIA7gAsIIanQYgW7Tt2jwkaTDgCycOtACeEiAA9IIACY1t2LABoJxQSLGFiwGgDEArvOQhAHsgrAg4EFYOAjCxMBpqDHt9QygjZABecWJSCmoAIgAVIwAHCFQEBhKwfKdiGTkCiAA3Y2QrOCNaiS8-APpfCCc2VgIEIJAaUIgAOiwgxgAKCQADAEkxOCxJTtsaCAgyW2AyEqCaGmAhMOR-MGxkUQByWysJiBWCAEpWccnpuYLZbEFYAGXCUBATGQABI8PEZrkIGxYfCaDMGiAUV5kDB-AB+VEI3r+NifH4EAD0lOQ+XBcEh0OKZQqVTELTaHXSOLxIEJAwg+QIQA){website}'

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

In fact, more than one interface can be extended:

```ts
interface Skill {
  name: string;
}

interface Habit {
  when: string;
}

interface SkillMastery
  extends Skill, Habit {
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

* extends
* 33
* '33'
* with
* implements
* extend

---
## Revision

An interface can only extend one other interface.

???

* False
* True
