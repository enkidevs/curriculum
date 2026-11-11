---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An option that fails a must-have is removed before any scoring, whatever its price.
    requiredConcepts:
      - Rule out the vendor, whatever its price.
    acceptedAnswers:
      - Drop it, however cheap it is.
      - Cut it before comparing the rest.
      - Rule it out; price can't compensate.
    hints:
      - Can a low price make up for missing a must-have?
      - Should it even reach the scoring?
    tooVagueExamples:
      - Think about it.
      - Weigh it carefully.
    incorrectExamples:
      - Keep it but give it a lower score.
      - Pick it, since it's the cheapest.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Weights set in advance prevent tuning toward a preferred winner.
    requiredConcepts:
      - So priorities, not a preferred winner, drive the result.
    acceptedAnswers:
      - To avoid rigging it for a favorite.
      - So weights reflect what matters, not who I like.
      - To keep a preference from shaping the weights.
    hints:
      - What could happen if you saw scores first?
      - Whose priorities should drive it?
    tooVagueExamples:
      - It's fairer.
      - Best practice.
    incorrectExamples:
      - So all criteria weigh the same.
      - So the cheapest wins.

---

# Weighing The Criteria That Matter

---
## Content

Not everything belongs in one score. Sort what matters into two groups:

- **Must-haves:** things every option has to have.
- **Preferences:** things you compare among the options left, such as total cost, training time, support hours, and reporting.

Say your checkouts must keep taking cards when the internet is down. That's pass or fail, and a low price can't make up for failing it. Rule out any option that misses a must-have, then weight the preferences.

Give AI both lists in that order:

```plain-text
Rule out any vendor without offline card payments. Score the rest on cost 40%, training 20%, support 20%, reporting 20%.
```

**Setting the weights before you see which vendor wins keeps the scoring honest.** Changing them afterward can turn it into a way to justify a favorite.

Note who chose the must-haves and weights, so the comparison reflects your team's decision and not what AI assumed.

> 💡 A must-have filters options. A preference helps rank the survivors.

---
## Practice

Offline card payments are a must-have. However, the cheapest checkout vendor lacks them. What do you do with that vendor?

???

- Rule it out before scoring; a low price can't make up for it.

---
## Revision

Why set the criterion weights before looking at vendor scores?

???

- So the result reflects priorities, not a favorite you already had.
