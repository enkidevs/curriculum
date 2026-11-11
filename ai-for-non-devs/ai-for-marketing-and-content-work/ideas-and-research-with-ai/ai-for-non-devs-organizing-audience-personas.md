---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Remove or mark unsupported traits as unknown, because a persona should summarize supplied evidence rather than fill gaps with plausible details.
    requiredConcepts:
      - Remove the budget and location traits or mark them unknown.
    acceptedAnswers:
      - Remove the unsupported location and budget traits or mark them as unknown.
      - Keep only traits that trace back to the surveys or notes.
      - Drop "budget-conscious" and "urban"; the research doesn't say that.
    hints:
      - Can you point to a response behind those traits?
      - Does sounding plausible make a detail observed?
    tooVagueExamples:
      - Check the persona.
      - Gather more data.
    incorrectExamples:
      - Keep the traits because they sound typical for the category.
      - Treat the persona as proven because other details are accurate.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Personas built from your research describe that research, not the whole market.
    requiredConcepts:
      - The personas only describe the people in this research, not the whole customer base.
    acceptedAnswers:
      - It's just who replied, not everyone.
      - Newsletter subscribers who answered aren't all customers.
      - That's a pattern in this sample, not proof about the market.
    hints:
      - Who actually answered the survey?
      - Do the people who reply speak for every customer?
    tooVagueExamples:
      - It's not accurate.
      - Be careful with it.
    incorrectExamples:
      - Nothing; the biggest group is most customers.
      - It should say 'many' instead of 'most'.

---

# Organizing Audience Personas

---
## Content

AI can invent convincing customer profiles with nothing real behind them.

Instead, give it real surveys, interviews, support messages, or sales notes and ask it to organize only what appears there:

```plain-text
Group these responses into audience segments. For each one, show supporting quotes, the number of contributors, contradictions, and missing information. Do not infer demographics that were not stated.
```

**The result describes the people who answered, not your whole market.**

If 22 of 40 responses fit one group, that's a pattern in your survey. It doesn't mean 55% of all your customers fit it.

> 💡 If a persona has a trait the research never mentions, like budget or location, remove it or mark it unknown.

---
## Practice

A persona is labeled "budget-conscious urban runner," but the supplied research never mentions budget or location. What should you do?

???

- Remove those traits or mark them as unknown until research supports them.

---
## Revision

AI grouped 40 survey replies from your newsletter subscribers into personas. The biggest group is "busy parents." A colleague wants to tell leadership that most of your customers are busy parents. What's wrong with that?

???

- The groups describe who answered the survey, not all your customers.
