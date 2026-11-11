---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Providers differ in which schema rules they enforce, and this one may skip maxLength.
    requiredConcepts:
      - The provider doesn't enforce that rule, or not every schema rule is enforced.
    acceptedAnswers:
      - The provider skips maxLength.
      - Not every provider enforces length limits.
      - Constrained output can cover fields and types but skip length rules.
    hints:
      - Does every provider enforce every schema rule?
      - Which rule did this title break?
    tooVagueExamples:
      - A bug.
      - The model made a mistake.
    incorrectExamples:
      - The model ignored the schema on purpose.
      - The temperature was too high.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The reply hit the output token limit and stopped partway through the JSON.
    requiredConcepts:
      - It hit the token limit, or the reply was cut off.
    acceptedAnswers:
      - It ran out of output tokens.
      - The reply hit the length cap and stopped.
      - It got cut off at the token limit.
    hints:
      - Does the JSON look finished?
      - What stops a reply partway, whatever the schema says?
    tooVagueExamples:
      - A bug.
      - The model failed.
    incorrectExamples:
      - The schema was wrong.
      - The model ignored the schema on purpose.

---

# Constrained Output

---
## Content

Many providers can make a reply follow your schema. As the model writes, it can only pick tokens that keep the JSON valid for that schema. This is called constrained output.

**Even so, a reply can still break your rules, in two ways.**

First, providers differ in which schema rules they enforce. If yours skips `maxLength`, a 60-character limit on `title` can still produce this:

```plain-text
{"title": "Large Bamboo Cutting Board With Juice Groove And Easy-Grip Handle",
 "bullets": ["Hand wash"], "category": "kitchen"}
```

That title is 65 characters, so the listing page cuts it off mid-word.

Second, a reply that hits the output token limit stops partway, whatever the schema says:

```plain-text
{"title": "Bamboo Board", "bullets": ["Hand wa
```

> ‼️ Constrained output makes valid replies much more likely, but your code still has to check every reply before it uses one.

---
## Practice

Constrained output is on, and your schema caps `title` at 60 characters. Why can a 65-character title still come back?

???

- Your provider may not enforce `maxLength`.

---
## Revision

Constrained output is on, and a reply ends with `"bullets": ["Hand wa`. What most likely cut it short?

???

- It hit the output token limit and stopped partway.
