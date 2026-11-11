---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The reason lets you see why the judge scored a reply that way and check whether you agree, which catches judge mistakes.
    requiredConcepts:
      - The reason shows why the judge passed or failed the reply, so you can check its call.
    acceptedAnswers:
      - So you can see why it failed a reply and check if it's right.
      - To check the judge's call against the reply.
      - It shows when the judge misread the reply or the rubric.
    hints:
      - What can you do with a verdict that has no explanation?
      - How would you spot a judge that's wrong?
    tooVagueExamples:
      - For more detail.
      - It's helpful.
      - To evaluate each reply.
    incorrectExamples:
      - The reason is shown to the customer with the reply.
      - Longer judge output makes the score more accurate.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# LLM-As-Judge

---
## Content

Some criteria need judgment that code can't apply, like whether a reply answers what the customer asked. For those, a model can do the grading.

**LLM-as-judge means using a model to score outputs against a rubric, a written list of criteria with what passes and what fails.**

Here's part of the rubric a judge model uses on drafted replies to refund questions:

```plain-text
Score each criterion PASS or FAIL, with a one-line reason.
answers_question: PASS if the reply responds to what the
  customer asked. FAIL if it answers a different question.
```

A customer asked when their refund will arrive, and the drafted reply explained how to send the item back. The judge returned this:

```plain-text
answers_question: FAIL. The customer asked when the
refund arrives; the reply explains how to return the item.
```

The reason lets you check the judge's call against the reply. Here it's right: the reply answered a different question.

> 💡 Ask the judge for a one-line reason with every score. When a reason doesn't match the reply, you've caught a judge mistake that a bare FAIL would hide.

---
## Practice

Your LLM judge's rubric asks for a one-line reason with each PASS or FAIL. What is the reason for?

???

- To show why it scored a reply, so you can check its call.

---
## Revision

An LLM judge suits criteria code can't check, such as whether a reply ???.

- answers the question
- is valid JSON
- is under 100 words
- includes the order number
