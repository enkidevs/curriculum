---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: It is data extraction, where the model pulls specific fields out of free text.
    requiredConcepts:
      - Extracting or pulling fields out of the email text.
    acceptedAnswers:
      - Data extraction.
      - Extracting fields from the email text.
      - Pulling structured data out of unstructured text.
    hints:
      - What goes in, and what comes out?
      - Is the model writing something new or pulling something out?
    tooVagueExamples:
      - An AI feature.
      - Automation.
    incorrectExamples:
      - Drafting replies.
      - Answering questions from documentation.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Most of the work is the code around the model call, such as finding the right pages to answer from.
    requiredConcepts:
      - The code around the model call, such as finding the right pages.
    acceptedAnswers:
      - Code around the model, like finding the right docs.
      - Finding the right pages to give the model.
      - The surrounding code more than the model call.
    hints:
      - What has to happen before the model can answer?
      - Which parts does the model leave to you?
    tooVagueExamples:
      - The backend.
      - Everywhere.
    incorrectExamples:
      - Writing the perfect prompt.
      - Training the model on your docs.

---

# Common AI Features

---
## Content

Most AI features work the same way: a model reads some text and writes some text back.

Here are four common AI features:

- **Drafting replies.** A support tool drafts answers from your help center.
- **Answering from docs.** A docs bot answers questions and links its sources.
- **Extracting data.** An invoice tool fills in vendor, amount, and due date.
- **Taking actions.** An assistant books a room when everyone is free.

**In each one, your code does most of the work.** It decides what the model gets to read, checks the data it extracts, and actually makes the booking the model asked for.

---
## Practice

Your app reads forwarded receipt emails and fills in merchant, total, and date. What kind of AI feature is that?

???

- Data extraction, pulling fields out of free text.

---
## Revision

You're building a docs bot that answers questions and links its sources. Where does most of the engineering work go?

???

- The code around the model, like finding the right pages.
