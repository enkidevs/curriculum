---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Stacked vague negatives push AI toward safe, generic output.
    requiredConcepts:
      - A bland, general answer that dodges everything.
    acceptedAnswers:
      - A generic answer that plays it safe.
      - Something vague that avoids every banned quality.
      - A watered-down result.
    hints:
      - What's the safest way to avoid everything?
      - Did the prompt say what it wants?
    tooVagueExamples:
      - A bad answer.
      - Something wrong.
    incorrectExamples:
      - An answer following only the last rule.
      - A question asking you to rank the rules.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Each negative becomes a positive feature to aim for.
    requiredConcepts:
      - Turn each don't into a wanted feature.
    acceptedAnswers:
      - Rewrite each as something the answer should do.
      - Swap every prohibition for a positive instruction.
      - Say what you want instead of each thing to avoid.
    hints:
      - What can AI aim for?
      - What should each line say instead?
    tooVagueExamples:
      - Rewrite them.
      - Make them clearer.
    incorrectExamples:
      - Keep only the most important one.
      - Repeat them all at the end.

---

# The Cost Of Stacked Negatives

---
## Content

**Stack several prohibitions, and AI may choose a vague answer that breaks none of them.**

```plain-text
Write a team note about the new travel booking tool. Don't sound preachy, don't make it long, and don't write it like a policy.
```

It comes back with:

```plain-text
We have a new way to book travel. It should make things easier. Questions are welcome!
```

It isn't preachy, long, or policy-like.

It never says when to use the tool, where to find it, or when the old process ends. The prompt never asked.

Replace the don'ts with a target:

```plain-text
Announce the travel booking tool in under 80 words. Give its start date, link to the setup guide, and say when the old request form closes. Keep it conversational.
```

> 💡 Replace each "don't" with something the answer should include.

---
## Practice

What tends to come back when a prompt stacks several vague prohibitions?

???

- Something bland and general enough to avoid all of them.

---
## Revision

Your prompt has four vague "don'ts." How do you fix it?

???

- Replace each one with a feature the answer should have.
