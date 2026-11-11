---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Let AI draft the prompt for you, ideally asking about missing details first.
    requiredConcepts:
      - AI drafts the prompt for you, or asks about the missing details first.
    acceptedAnswers:
      - Have AI interview me, then write the prompt.
      - Ask AI to write the prompt after asking me questions.
      - Get AI to draft it, asking what's missing first.
      - Explain your goal in your own words, then ask it to draft you a prompt.
      - Ask AI to write the prompt for me.
      - Tell AI the goal and let it write the prompt.
      - Have AI ask me what it needs to know.
    hints:
      - Who could draft the prompt?
      - What should happen before it drafts?
    tooVagueExamples:
      - Ask AI.
      - Try something.
    incorrectExamples:
      - Write one long prompt with everything.
      - Ask broadly and edit the answer.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Answering clarifying questions supplies details AI would otherwise have to invent.
    requiredConcepts:
      - answering supplies details AI would otherwise invent or guess
    acceptedAnswers:
      - They fill in details AI would otherwise have to invent.
      - The questions expose missing decisions, and your answers keep AI from guessing them.
      - Answering gives AI the context it needs to write a prompt that matches your real goal.
    hints:
      - Think about why the assistant asked before writing the prompt.
      - What would happen to those missing details if you did not answer?
    tooVagueExamples:
      - It improves the prompt.
      - The questions are useful.
    incorrectExamples:
      - The assistant cannot produce any prompt until every question is answered.
      - The questions identify which parts of the goal AI is least confident about.

---

# AI As A Prompt Writer

---
## Content

**AI can write the prompt before doing the task.** This is called **meta-prompting**.

Start with a rough goal:

```plain-text
Help reduce membership lapses.
```

Then ask for a prompt:

```plain-text
Turn this goal into a prompt. Before writing it, ask up to three questions about the data, audience, and output. Goal: reduce renewal lapses. I have anonymized renewal dates, reminder dates, and lapse status.
```

After you answer its questions, it might return:

```plain-text
Using the anonymized records, identify patterns between reminder timing and lapse rates. Suggest three changes to the reminder schedule. Return a short table and a prioritized list. Describe patterns as correlations, not proof of cause.
```

> 💡 You provide the goal and missing decisions. AI helps structure them into a prompt.

---
## Practice

You know your goal but can't word the request or tell which details matter. What's the quickest way forward?

???

- Ask AI to question you on details, then draft the prompt.

---
## Revision

Why are the assistant's clarifying questions worth answering before it writes your prompt?

???

- They fill in details AI would otherwise have to invent.
