---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Test with real inputs from customers, including long and messy ones.
    requiredConcepts:
      - Real inputs from actual customers or production traffic, or long and messy inputs.
    acceptedAnswers:
      - Real tickets from customers, including the messy ones.
      - A sample of actual production tickets.
      - Long, mixed-language tickets like real customers send.
    hints:
      - Who wrote the tickets you tested with?
      - What do real tickets look like?
    tooVagueExamples:
      - More tests.
      - Everything.
    incorrectExamples:
      - More short, tidy test tickets.
      - Nothing, since every test passed.
      - If the tests were correctly implemented.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The JSON parser fails, so the app can't use the reply even though a person would find it helpful.
    requiredConcepts:
      - The parse fails, or the app can't use the reply.
    acceptedAnswers:
      - Parsing fails and the request goes unhandled.
      - Your code can't read it, so it errors.
      - The app breaks on it even though the text is good.
    hints:
      - What does your code do with the reply first?
      - Can a JSON parser read a paragraph?
    tooVagueExamples:
      - Something goes wrong.
      - It's a problem.
    incorrectExamples:
      - Nothing, since the answer itself is good.
      - The model retries in JSON on its own.

---

# Demo Versus Production

---
## Content

Say your code sends each support ticket to a model with this instruction, called a prompt:

```plain-text
Classify this ticket. Reply only with JSON like
{"category": "...", "urgency": "..."}.
```

On short test tickets, the reply is exactly what you asked for:

```plain-text
{"category": "billing", "urgency": "medium"}
```

Then a customer sends three long paragraphs about two problems, and the model replies with a sentence instead of JSON:

```plain-text
This ticket covers two issues, so here is my
classification: billing and account access.
```

Your code can't parse that reply, so the ticket never gets sorted.

**Real users send messier input than your tests, so a feature can pass every demo and still fail in production.** This course is about closing that gap.

---
## Practice

Your ticket classifier passed every test ticket you wrote yourself. What should you test it with before launch?

???

- Real tickets from customers, including long and messy ones.

---
## Revision

Your model returns a helpful paragraph where your code expects one JSON object. What happens to that request?

???

- The parser fails, so your app can't use the answer.
