---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The large model, since sending unmatched requests there is the safe default.
    requiredConcepts:
      - The large model.
    acceptedAnswers:
      - The large model.
      - To the bigger model, to be safe.
      - The larger, stronger model by default.
    hints:
      - Which model handles the hard requests?
      - What does a wrong answer on a hard request cost?
    tooVagueExamples:
      - Somewhere safe.
      - The right model.
    incorrectExamples:
      - The small model, since it's cheaper.
      - Reject it until a rule matches.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Run both models on real past questions and confirm the small model's answers hold up.
    requiredConcepts:
      - Compare the small model's answers with the large model's on real past questions, or confirm quality holds.
    acceptedAnswers:
      - Compare both on a few hundred real past questions.
      - Whether the small model's answers are as good on real questions.
      - Test the small model on past delivery questions first.
    hints:
      - What would make the savings not worth it?
      - Which questions would you test on?
    tooVagueExamples:
      - Check it works.
      - Quality.
    incorrectExamples:
      - Just the price difference.
      - How fast the small model replies.

---

# Model Routing

---
## Content

Simple requests can often go to a smaller, cheaper model. **Model routing picks a model for each request: simple ones go to a small model, and everything else goes to a large one.**

Here's a simple router for a support assistant. A quick keyword match sets the `topic`:

```plain-text
if topic in ["password reset", "delivery times"]:
    send to small model
else:
    send to large model
```

And here's where three requests go:

```plain-text
"How do I reset my password?"     -> small model
"When will order A-2231 arrive?"  -> small model
"Why was I charged twice?"        -> large model
```

The billing question matches neither topic, so it goes to the large model, the safe default for anything unmatched.

If 70% of requests go to a small model that costs a tenth as much, the bill drops by about 63%.

**That only pays off if quality holds, so first compare both models on real past questions.** Here's how each answered the delivery question, with the order's tracking data in the prompt:

```plain-text
Large model: It's due Thursday, May 14.
Small model: Orders usually arrive in 3 to 5 business days.
```

The small model ignored the tracking data. If that happens often, delivery questions stay on the large model.

---
## Practice

Your router sends simple topics to a small model. Where should a request matching none of them go?

???

- The large model, the safe default for anything unmatched.

---
## Revision

You want to move delivery-date questions to a cheaper small model. What do you check before switching?

???

- Compare both models' answers on real past questions.
