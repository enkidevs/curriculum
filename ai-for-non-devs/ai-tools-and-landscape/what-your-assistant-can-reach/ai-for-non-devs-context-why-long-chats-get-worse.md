---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: In a long chat, early instructions get buried or pushed out of the limited working space.
    requiredConcepts:
      - In a long chat, early instructions get buried or pushed out of the limited working space.
    acceptedAnswers:
      - Too much later text pushed my first instruction out of focus.
      - The context window filled up and the early rule lost weight.
      - Newer messages crowded out what I said at the start.
    hints:
      - Where in the chat was the format set?
      - What competes for the assistant's working space?
    tooVagueExamples:
      - The chat is too long.
      - It forgot.
    incorrectExamples:
      - The assistant got tired of the format.
      - It decided paragraphs suit you better.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A short summary carries what still matters now, not the whole history.
    requiredConcepts:
      - A short summary of what still matters (such as the goal, latest draft, or rules still in force), not the whole chat.
    acceptedAnswers:
      - The goal, the draft so far, and the rules.
      - My latest draft and the instructions that still apply.
      - A short summary of what I'm doing and the constraints.
    hints:
      - What does the new chat need?
      - What should stay behind?
    tooVagueExamples:
      - The important stuff.
      - Context.
    incorrectExamples:
      - The entire conversation.
      - Nothing; just start typing again.

---

# Why Long Chats Get Worse

---
## Content

After a long exchange, an assistant may stop following a format you set near the beginning.

It can only take in a limited amount of text at once, called its context window[1]. Messages, files, tool results, and instructions all share that space.

**As a chat grows, early messages can get dropped, shortened, or start to matter less.** Old instructions can also get buried under newer ones.

When the chat drifts, start a new one with a short summary:

- the current goal
- the latest draft
- the rules that still apply

> ‼️ A common mistake is pasting the whole old chat into the new one. That brings back the clutter that caused the drift.

---
## Practice

You set a bullet-point format at the start of a long chat. Hours later, replies come as paragraphs. Why?

???

- The chat grew so long that your early instruction got buried or dropped.

---
## Revision

A long chat has drifted off task. You start a fresh one. What do you carry over?

???

- A short summary: the current goal, latest draft, and rules still in force.

---
## Footnotes

[1:Context Window]
The amount of information a model can use for one response. The product decides how messages, files, tool results, and instructions are fitted into that space.
