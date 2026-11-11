---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The model requests an available tool, and the product or integration runs it and returns the result for the model to use.
    requiredConcepts:
      - The product or integration, not the model, does the lookup and returns the result.
    acceptedAnswers:
      - The model asks for a tool, and the product fetches the events and passes them back.
      - The connected service does the lookup after the model requests it.
      - It doesn't open the calendar itself; the app runs the tool and gives it the result.
    hints:
      - Which part can actually contact the calendar service?
      - What happens to the result after it is fetched?
    tooVagueExamples:
      - It checks the calendar.
      - The connection does it.
    incorrectExamples:
      - The model signs into the calendar and reads the account directly.
      - It remembers your calendar from its training.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# What Happens When It Reaches Out

---
## Content

Suppose you ask a connected assistant, "What is my first meeting tomorrow?"

**The model does not open your calendar itself.** The product tells it which tools are available and what each one does.

The model asks for the calendar tool and says what to look up. The product checks it's allowed, runs the tool, and hands back the result:

```plain-text
Calendar result: 9:30 AM, weekly planning call
```

The model then writes its answer from that result.

> 💡 The model can only ask for the tools the product offers it. The product is what actually opens your calendar.

---
## Practice

You ask a connected assistant, "What's my first meeting tomorrow?" How does the model get your calendar information?

???

- It asks for the calendar tool; the product runs it and hands back the result.

---
## Revision

The model needs current information from a connected service. It first ???.

- requests a tool
- searches training data
- signs in itself
- checks its memory
