---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Products can wrap the same model in different tools and setup, such as web search.
    requiredConcepts:
      - The apps give the same model different tools or setup, such as web search.
    acceptedAnswers:
      - One app lets it search the web; the other doesn't.
      - The products surround the model with different tools.
      - One app has live search turned on.
    hints:
      - Could one app look things up before answering?
      - What does the app add besides the model?
    tooVagueExamples:
      - The apps are different.
      - One is better.
    incorrectExamples:
      - One app secretly runs an older model.
      - The model randomly guessed a different number.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Prompts need retesting in a new product's setup.
    requiredConcepts:
      - Retest and adjust for the new setup.
    acceptedAnswers:
      - Test each prompt again and tweak it.
      - Try them first, since the setup differs and results may change.
      - Check them against the new assistant's features.
    hints:
      - Is the product setup the same?
      - Does the model name settle it?
    tooVagueExamples:
      - Changes.
      - Be careful.
    incorrectExamples:
      - Rewrite everything from scratch.
      - Nothing, if the model name matches.

---

# One Model In Different Products

---
## Content

**The same model can answer differently when two products give it different surroundings.** Four things can differ:

- **Product instructions:** rules the app adds before your prompt
- **Available tools:** web search, files, or connected services
- **Memory and context:** earlier messages or saved information sent with the prompt
- **Limits and settings:** how much input or output the product allows

These differences change what the model receives and what it can do before answering.

> ‼️ Retest important saved prompts when you move them to another product, even if the model name looks familiar.

---
## Practice

Two apps run the same model. One gives today's exchange rate; the other, an outdated one. What likely explains it?

???

- One app gives the model web search; the other doesn't.

---
## Revision

You're moving your saved prompts to a different assistant. What should you do before relying on them there?

???

- Retest them and adjust for its tools, memory, and instructions.
