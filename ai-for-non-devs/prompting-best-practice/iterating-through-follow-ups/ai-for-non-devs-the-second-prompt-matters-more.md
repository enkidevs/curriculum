---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A general first answer gives you structure to ask a sharper follow-up, not a reason to restart.
    requiredConcepts:
      - Send a more specific follow-up based on the first answer.
    acceptedAnswers:
      - Follow up asking for detail on the most useful part.
      - Use the answer to ask a narrower question.
      - Ask a pointed follow-up instead of starting over.
    hints:
      - Do you need to start again?
      - What did the first answer give you to work with?
    tooVagueExamples:
      - Try again.
      - Ask for more.
    incorrectExamples:
      - Rewrite the opening prompt from scratch.
      - Decide AI isn't suited to this task.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The first answer reveals categories, gaps, or distinctions that a follow-up can use to ask a sharper question you could not frame at the start.
    requiredConcepts:
      - The follow-up uses what the first answer revealed.
    acceptedAnswers:
      - It uses what the first answer revealed.
      - You couldn't ask about the price group before AI found it.
      - Starting over throws away the groups it already found.
    hints:
      - When did you learn there was a price group?
      - What would a rewrite throw away?
    tooVagueExamples:
      - Follow-ups are more useful.
      - It gives a better answer.
    incorrectExamples:
      - A follow-up works mainly because it takes fewer words to type.
      - Staying in the same conversation automatically makes the answer accurate.

---

# Using The First Answer

---
## Content

Give AI 30 anonymized cancellation reasons, and it might group them into price, features, support, timing, competitors, and other.

Those groups are a reasonable start, but too broad to act on. Here's a follow-up:

```plain-text
Take the price group. Which cancellations name a competitor's price, and which only say we're expensive? Quote the relevant wording for each.
```

**The second prompt uses structure revealed by the first.**

> 💡 The first answer is a map. The second prompt picks where to dig.

---
## Practice

AI's first answer is reasonable but too general to act on. What should you do next?

???

- Ask a sharper follow-up that builds on what it gave you.

---
## Revision

AI sorted 30 cancellation reasons into groups, including price. Why follow up on the price group rather than rewrite your first prompt?

???

- It builds on groups you only saw once the first answer came back.
