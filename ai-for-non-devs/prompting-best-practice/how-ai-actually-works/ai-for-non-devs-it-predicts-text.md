---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The assistant builds the answer itself, either by predicting the words that plausibly follow the question or by drawing on patterns learned during training, rather than by reading the policy.
    requiredConcepts:
      - it predicts the words that plausibly follow the question, or it draws on patterns learned during training, rather than opening the document
    acceptedAnswers:
      - It continues your question with the words that most plausibly follow it.
      - It relies on its training data, so the wording comes from policies it learned from rather than yours.
      - The assistant generates plausible text instead of looking the document up.
    hints:
      - Think about how your phone suggests the next word while you type.
      - Ask whether the assistant is retrieving a document or generating what usually comes next.
    tooVagueExamples:
      - It uses AI.
      - It guesses the answer.
    incorrectExamples:
      - It searches the company's policy database before responding.
      - It matches the question to a stored list of policy answers.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Without your source, the answer reflects typical policy text, not your actual policy.
    requiredConcepts:
      - Typical returns policy wording, not your real policy.
    acceptedAnswers:
      - A generic policy, not ours.
      - What returns policies commonly say.
      - Plausible typical text; it never saw our policy.
    hints:
      - Did the assistant see your policy?
      - What would text like this be based on?
    tooVagueExamples:
      - Something made up.
      - An AI answer.
    incorrectExamples:
      - An older version of your policy.
      - A summary of the parts it could find.

---

# Text Prediction

---
## Content

Predictive text on your phone suggests the next word from patterns in messages it has seen.

An AI assistant does something similar across whole sentences and paragraphs. **It predicts which words would plausibly follow your question.**

Ask about your company's parental leave policy without sharing the policy. In that chat, the assistant has no company document to read, so it builds an answer from patterns learned during training.

That can produce convincing policy language, but not necessarily your policy.

> 🧠 The model supplies plausible language. The source supplies the facts.

---
## Practice

How can an assistant produce an answer about a policy document it has not opened?

???

- It continues your question with the words that most plausibly follow it.

---
## Revision

Without pasting the policy, you ask for your company's returns window and get a confident answer. What is it, most likely?

???

- What a returns policy usually says, not your company's policy.
