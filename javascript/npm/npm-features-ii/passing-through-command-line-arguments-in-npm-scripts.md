---
author: catalin
type: normal
category: feature
links:
  - >-
    [Passing through command line argument](http://www.marcusoft.net/2015/08/npm-scripting-configs-and-arguments.html#passing-through-command-line-argument){website}
tags:
  - introduction
  - workout
  - deep
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

# Passing through command line arguments in npm scripts


---

## Content

`npm` package manager provides a feature that lets users pass in command line arguments using the `--` characters. Note that there is a blank space after the two dashes.

For example, if we have the following scripts:

```json
"scripts" {
  // other scripts
  "start:test" : "npm start -- 4000",
  "start:stage" : "npm start -- 5000"
}
```

When running either `start:test`  or `start:stage` scripts, the first command line argument provided will be `4000` or `5000` depending on our choice.

To access these arguments the `process.argv` array can be used. In our case `process.argv[2]` represents the first argument provided as `[0]` is `node` and `[1]` is the path to the `.js` file.

Alternatively you can provide `--` when calling a script directly[1]:

```bash
npm run someCommand -- --arg=value
```

---

## Practice

Consider an npm script called `doSomething`. Run it via npm, passing `"enki"` as an argument to it:

```bash
??? ??? ??? \ 
  ??? "???"
```

- npm
- run
- doSomething
- `--`
- enki
- add
- runWithArgs
- `process.argv[0]`


---

## Revision

How would you pass to the following npm script call a `"test"` argument?

```bash
npm run myScript \ 
  ??? "???"
```

- `--`
- test
- add
- argvs
- arg
- `process.argv[0]`

---

## Footnotes

[1:Calling a scrip directly]

When we run scripts through `npm`, we're effectively using `npm` as a middleman.

This means that passing regular arguments would be passing inputs to the `npm` program **directly**, not the script that it runs **underneath**.

```bash
# passing inputs to npm directly
npm run someCommand --arg=value

# passing inputs to the someCommand script
npm run someCommand -- --arg=value
```

The `--` lets us skip `npm` and pass arguments into the script that `npm` is calling.
