---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A critique surfaces choices AI would otherwise make for you without saying so.
    requiredConcepts:
      - You settle missing details yourself instead of AI guessing, or it saves rewrites and extra rounds later.
    acceptedAnswers:
      - It shows the choices AI would otherwise make for you.
      - I can fix gaps, like role level, before AI guesses.
      - It reveals assumptions I need to settle first.
      - So you don't write the questions multiple times and make multiple revisions.
      - It saves rewriting the prompt later.
      - Fewer rounds of fixing the answer.
    hints:
      - Who picks the role level if you don't?
      - What happens to the gaps if you just run it?
    tooVagueExamples:
      - It makes the prompt better.
      - It helps AI understand.
    incorrectExamples:
      - It guarantees that the final answer is factually correct.
      - It proves whether the task can be done at all.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The instruction holds off the answer and asks for gaps and assumptions.
    requiredConcepts:
      - It tells AI not to answer yet.
      - It asks for what's unclear, missing, or assumed.
    acceptedAnswers:
      - Before answering, tell me what's unclear or missing.
      - Don't do the task. List the assumptions you'd have to make.
      - "Critique this prompt first: what's vague, missing, or assumed?"
    hints:
      - Should AI produce the output?
      - What should it list?
    tooVagueExamples:
      - Check my prompt.
      - Is this good?
    incorrectExamples:
      - Rewrite this prompt to sound polished.
      - Check this for grammar errors.

---

# Critique Before Output

---
## Content

Before running an important prompt, ask AI to critique it without answering it:

```plain-text
Do not answer this prompt yet. List what is unclear, missing, or assumed. Then ask up to four clarifying questions.

"Write interview questions for the operations coordinator role."
```

The critique might flag:

- what level the role sits at
- what you're screening for
- whether the questions are for a panel or sent to candidates in advance
- how many you want

Each gap is a decision. Run the original prompt, and AI makes those choices for you. **Critique it first, and you can make them yourself.**

> 💡 One extra prompt surfaces the assumptions AI would otherwise make for you.

---
## Practice

Before running "Write interview questions for the coordinator role," you ask AI what's unclear or missing. Why is that worth it?

???

- You settle the gaps, like role level, instead of AI guessing.

---
## Revision

Write an instruction that makes AI critique your prompt instead of answering it.

???

- Don't answer yet. List what's unclear, missing, or assumed in this prompt.
