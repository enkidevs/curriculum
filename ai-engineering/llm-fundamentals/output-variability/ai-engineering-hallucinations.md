---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A 200 with valid JSON shows the call and format worked, and says nothing about whether the content is true.
    requiredConcepts:
      - It says nothing about accuracy, or it only shows the call and format worked.
    acceptedAnswers:
      - Nothing about accuracy. Only that the call succeeded.
      - The request and the format worked; the facts are unchecked.
      - Only that it's well-formed, not that it's correct.
    hints:
      - What does a 200 status measure?
      - Could a made-up answer still be valid JSON?
    tooVagueExamples:
      - Not much.
      - It might be fine.
    incorrectExamples:
      - That the answer is correct.
      - That the model was confident, so it's probably right.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Evals, automated tests that compare the bot's answers with known-correct ones, catch it before release.
    requiredConcepts:
      - Evals, or automated tests that check answers against known-correct answers or the real policy.
    acceptedAnswers:
      - Evals that compare answers with known-correct ones.
      - Automated tests that check its refund answers against the real policy.
      - A test set of refund questions with the right answers, scored each release.
    hints:
      - How would you know before customers do?
      - What would you compare each answer with?
    tooVagueExamples:
      - More testing.
      - Add guardrails.
    incorrectExamples:
      - Alert on HTTP error rates.
      - Validate the reply against the JSON schema.

---

# Hallucinations

---
## Content

**A hallucination is a confident claim from a model that nothing in its prompt or any other source supports.**

Say a customer asks your support bot about returning an opened laptop. Your app gets back this response:

```plain-text
HTTP 200 OK
{"category": "returns",
 "reply": "Opened laptops can be returned within 60 days."}
```

> ‼️ A 200 status and valid JSON tell you the call and the format worked, and nothing about whether the answer is true.

Here, your real policy allows returns within 14 days, and only for unopened items.

The model wrote "60 days" because return policies often say that, and your policy wasn't in the prompt.

Two techniques help reduce hallucinations like this one:

- **RAG** (retrieval-augmented generation): your app finds the real policy and adds it to the prompt.
- **Evals**: automated tests that check answers against known-correct ones before each release.

---
## Practice

Your assistant's reply came back with status 200 and valid JSON. What does that tell you about its accuracy?

???

- Nothing. It only shows the call and the format worked.

---
## Revision

Your support bot sometimes states refund windows your policy doesn't have. What kind of test catches this before release?

???

- Evals that compare its answers with known-correct ones.
