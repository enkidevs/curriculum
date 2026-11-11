---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: So the answer comes from your documents, rather than the model filling gaps from its training data.
    requiredConcepts:
      - The answer comes from your documents, or the model stops filling gaps from training data.
    acceptedAnswers:
      - So it answers from your docs, not its training data.
      - To stop it filling gaps with things it learned elsewhere.
      - So every answer traces back to a passage you gave it.
    hints:
      - Where else could the model get an answer?
      - What happens when the passages leave a gap?
    tooVagueExamples:
      - To make it accurate.
      - It's best practice.
    incorrectExamples:
      - To make the prompt shorter and cheaper.
      - Because the model can't read anything else in the prompt.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Detect the fixed sentence and show a fallback, such as a search link or a way to contact support.
    requiredConcepts:
      - Detect the sentence, and show a fallback or hand off.
    acceptedAnswers:
      - Spot it and show a search link instead.
      - Detect it and offer a support contact.
      - Match the sentence and switch to a fallback path.
    hints:
      - Why does the sentence need to be exactly the same every time?
      - What could your app show instead of a guess?
    tooVagueExamples:
      - Handle it.
      - Show something else.
    incorrectExamples:
      - Retry the same prompt until the model answers.
      - Raise the temperature so the model tries harder.

---

# Grounded Prompts

---
## Content

A grounded prompt is how RAG hands its passages to the model.

**It gives the model numbered passages and tells it to answer only from them.**

Here's one from an analytics product's docs bot:

```plain-text
Answer using only the sources below. Cite each
source you use by its number, like [2]. If the
sources don't contain the answer, reply exactly:
"I couldn't find that in the docs."

[1] Admin guide > Retention settings
Data is kept for 90 days by default. Set
retention_days in fernway.yaml to change it.

[2] Release notes 5.2
retention_days now accepts values up to 730.

Question: Can I keep data for three years?
```

The model takes the setting from [1] and the limit from [2]:

```plain-text
No. The maximum is 730 days, about two
years [2]. You set it with retention_days in
fernway.yaml [1].
```

Each instruction in the prompt has a job:

- **"Only the sources below":** keeps the model from filling gaps with what it learned in training, like another product's limits. It makes that less likely, but can't rule it out.
- **"Cite by number":** lets your app turn `[2]` into a link the customer can check.
- **"Reply exactly":** gives your code a fixed string to detect when the docs don't have the answer.

For "Can I export data to Excel?", the same sources give that fixed reply:

```plain-text
I couldn't find that in the docs.
```

> 💡 Detect that exact string in your code, and show a search link or a support contact instead.

---
## Practice

Why does a grounded prompt tell the model to answer only from the provided sources?

???

- So answers come from your docs instead of its training data.

---
## Revision

Your prompt says: if the passages lack the answer, reply exactly "I couldn't find that in the docs." What can your code do with that?

???

- Detect it and show a fallback, like a search link.
