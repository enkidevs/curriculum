---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Draft setup docs from the project's real code and config, not generic defaults.
    requiredConcepts:
      - The project's own config and code, not generic defaults.
    acceptedAnswers:
      - "`package.json` and the scripts the repo actually defines."
      - What this repository's files really declare.
      - This project's config files, checked by running the commands.
    hints:
      - Where does this project declare its Node version?
      - What do teammates actually run?
    tooVagueExamples:
      - Better information.
      - The docs.
    incorrectExamples:
      - A popular Node README template.
      - The model's knowledge of common setups.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Verify the real command before documenting it.
    requiredConcepts:
      - Run the new script and document what works.
    acceptedAnswers:
      - Try `npm run verify` yourself and write down what it does.
      - Run verify and confirm it works before changing the docs.
      - Execute the script and document the result.
    hints:
      - Do you know what `verify` does?
      - How would you confirm it?
    tooVagueExamples:
      - Update the README.
      - Look at package.json.
    incorrectExamples:
      - Assume `verify` runs the tests from its name.
      - Keep `npm test` for familiarity.
---

# Documentation Sources

---
## Content

Setup docs are an easy job to hand an assistant. Without your repo's files, though, it fills the gaps with common defaults, and the first person to follow the docs hits an error on day one.

Say a generic setup section tells a new teammate to run `npm start`:

```plain-text
$ npm start
npm ERR! Missing script: "start"
```

The repo's `package.json` says something else:

```plain-text
"engines": { "node": ">=20.11.1" },
"scripts": {
  "dev": "node --watch src/server.js",
  "test": "node --test",
  "migrate": "node scripts/migrate.js"
}
```

- **`engines`** sets Node 20.11.1 as the minimum version.
- **`dev`** is the command that starts the server. There's no `start` script at all.

**Give the assistant files like `package.json`, and draft from what they say.**

Then run each command the draft documents:

```plain-text
$ npm run dev
feeds api listening on http://localhost:3000
```

The server starts, so that command can go in the docs.

> 💡 Run every command in a setup section before you publish it, and keep only the ones that work.

---
## Practice

You ask AI for your service's setup section; it guesses `node index.js` and "Node 16+". What should it draft from instead?

???

- The repo's own `package.json`, with its real scripts and Node version.

---
## Revision

The README says `npm test`, but `package.json` defines only a `verify` script. What do you do before updating it?

???

- Run `npm run verify` and document what actually succeeds.
