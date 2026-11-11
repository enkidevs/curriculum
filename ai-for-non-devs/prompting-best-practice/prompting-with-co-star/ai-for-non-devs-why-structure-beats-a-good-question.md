---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A clearly worded prompt can still be generic when it leaves details of your situation for AI to invent.
    requiredConcepts:
      - The prompt is missing details, or doesn't have enough details, so AI has to fill them in.
    acceptedAnswers:
      - It left the details of your situation for AI to invent.
      - Because it was missing details.
      - Because it didn't have enough details.
      - The wording can be clear while the situation, reader, task, and output shape are missing, so AI invents generic defaults.
      - A well-phrased question still produces an average answer if it leaves the context and desired result unspecified.
    hints:
      - Was anything unclear about the wording itself?
      - Think about the situation, reader, and output details AI had to invent.
    tooVagueExamples:
      - It needs to be more specific.
      - The question was bad.
    incorrectExamples:
      - Questions are weaker than instructions simply because they end with a question mark.
      - The assistant did not recognize some of the words.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A generic answer is fixed by adding context, audience, and output shape.
    requiredConcepts:
      - Add situation, audience, or output shape.
    acceptedAnswers:
      - Context about my situation, the reader, and the format.
      - Who it's for, what's going on, and how to present it.
      - The details of my case and the output I need.
    hints:
      - What did the answer have to guess?
      - What makes an answer specific to you?
    tooVagueExamples:
      - More detail.
      - Better wording.
    incorrectExamples:
      - Rephrase the question more carefully.
      - Edit the generic parts yourself.

---

# Prompt Structure

---
## Content

**You can write a clear question and still leave AI to fill in the important details.**

**🚫 Clear but incomplete**

```plain-text
What's the best way to tell my team we're trialing a four-day week?
```

**✅ Structured**

```plain-text
I manage eight people in a support team. From March, we're trialing a four-day week with the same total hours compressed into four days. Write the message I'll send them. Use plain language, sound warm without selling the change, and stay under 200 words.
```

Both prompts are easy to understand. The second names the situation, audience, task, tone, and length, so AI has fewer gaps to fill with generic defaults.

CO-STAR gives those decisions six labels: Context, Objective, Style, Tone, Audience, and Response.

> 💡 Every detail you leave out of the prompt, AI decides for you.

---
## Practice

How can a clearly worded question still produce a generic answer?

???

- It left the details of your situation for AI to invent.

---
## Revision

A well-worded question got you an answer that could be for anyone. What should you add to the prompt?

???

- Your situation, who it's for, and the shape you want.
