---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Redact before transfer; confirming the source is allowed, keeping only needed fields, and governing retained copies are strong extras.
    requiredConcepts:
      - Remove or redact the card numbers and passwords before the text is sent or logged.
    acceptedAnswers:
      - Strip card numbers and passwords, send only needed parts.
      - Approve the source, minimize, then redact.
      - Redact sensitive values before any model call or log write.
    hints:
      - Which parts does the summary actually need?
      - When does redaction have to happen?
    tooVagueExamples:
      - Be careful with it.
      - Add privacy controls.
    incorrectExamples:
      - Send it raw and tell the model not to repeat card numbers.
      - Remove card numbers only from the text people see.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Minimization means fewer items cross the boundary; a prompt instruction doesn't change what was sent.
    requiredConcepts:
      - Send fewer sections; the provider still receives all 20 otherwise.
    acceptedAnswers:
      - Retrieve and send only the sections the answer needs.
      - Cut the number of sections before the request, not in the prompt.
      - Filter at retrieval, since a prompt line can't unsend data.
    hints:
      - When does the provider receive the sections?
      - Can a prompt line unsend data?
    tooVagueExamples:
      - Somewhat.
      - It depends.
    incorrectExamples:
      - Keep sending all 20; the model will ignore the rest.
      - A stronger prompt instruction to use only what it needs.

---

# Sensitive Data Exposure

---
## Content

An AI feature makes copies of your data: prompts sent to a model provider, model answers, logs, and saved test data. Personal or confidential data leaking through those copies is called sensitive data exposure.

**A sent prompt sits in another company's systems, so sensitive values have to come out before the request leaves your servers.**

Say a bank's support chat sends each finished conversation to a model to summarize for the next support person. First, your code runs redaction, which replaces sensitive values with placeholders:

```plain-text
before: Customer Dana Reyes: My card 4000 1234 5678 9010 was charged twice, $84.20 at Corner Market on May 3.
after:  Customer [NAME]: My card [CARD] was charged twice, $84.20 at Corner Market on May 3.
```

Here's the summary it returns:

```plain-text
Customer reports a duplicate $84.20 charge at
Corner Market on May 3.
```

The amount, merchant, and date stayed because the summary needs them. The card number never left your servers.

Logs and eval sets, your saved test cases, get the same redaction before anything is written.

> ‼️ A common mistake is adding a prompt line telling the model to ignore card numbers. It comes too late, because the provider has already received every one.

---
## Practice

Your summaries use chat transcripts, which may include card numbers or passwords. What must happen before sending them?

???

- Redact them, and send only the parts the summary needs.

---
## Revision

Your prompt sends 20 policy sections, and answers need two. Does adding "use only what you need" cut what the provider gets?

???

- No. The provider still receives all 20, so send fewer sections.
