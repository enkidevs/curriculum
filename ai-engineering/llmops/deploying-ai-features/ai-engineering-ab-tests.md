---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An A/B test measures what happens to real users, such as how many get their problem solved, which an offline eval on fixed cases can't show.
    requiredConcepts:
      - The effect on real users' outcomes, such as resolution rate or whether customers end up better off.
    acceptedAnswers:
      - Whether real customers get their problems solved more often.
      - The effect on actual users, like resolution rate.
      - How real customers fare with it compared with the old prompt.
    hints:
      - Who is in an offline eval?
      - What happens after a customer reads the reply?
    tooVagueExamples:
      - More data.
      - A second opinion.
    incorrectExamples:
      - Whether the new prompt is cheaper per call.
      - A more accurate score on the same test cases.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# A/B Tests

---
## Content

Offline evals score answers on fixed test cases. They can't show whether real customers end up better off.

**An A/B test splits real users at random between two versions and compares an outcome you care about.**

For a support chat, that outcome is often the resolution rate.

Here's a food-delivery app's support chat, split evenly between prompts v7 and v9 for two weeks:

| Prompt | Chats | Resolved |
|---|---|---|
| v7 | 18,000 | 72% |
| v9 | 18,000 | 76% |

v9 solved four more chats in every hundred. Offline evals had already scored v9's answers higher, but a better-scored answer can still solve fewer chats:

- **Longer replies:** customers stop reading.
- **More cautious replies:** customers ask for a person anyway.

Only real customers show which way it goes.

**The split is random so both groups get the same mix of easy and hard chats, leaving the prompt as the only difference.**

---
## Practice

Your new prompt beats the old one on your offline eval. What can an A/B test add?

???

- Whether real customers end up better off, like more chats resolved.

---
## Revision

An A/B test assigns each chat to the old or new prompt at random, so both groups get the same ???.

- chat mix
- resolution rate
- eval scores
- reply length
