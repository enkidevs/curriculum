---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The model only labels the cause; a separate rule in code or a person decides whether to page.
    requiredConcepts:
      - The model only labels; paging is decided elsewhere, by code or a person.
    acceptedAnswers:
      - A rule in code or a person, using the model's label.
      - The model tags it; a rule or person decides to page.
      - Separate code decides paging from the model's label.
    hints:
      - Should a model's guess trigger an action directly?
      - In a workflow, who fixes what happens after each step?
    tooVagueExamples:
      - Someone else.
      - Be careful with paging.
    incorrectExamples:
      - The model, by calling a paging tool.
      - The model, if the team names are in the prompt.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Workflows Versus Agents

---
## Content

**In a workflow, your code fixes the order of steps and a model handles some of them. In an agent, the model chooses the steps.**

Here's a flight change handled as a workflow:

```plain-text
1. code:  look up the employee's booking
2. model: turn "Friday, around 9 am" into a time range
3. code:  search flights in that range
4. code:  show the three closest flights
```

The model has one job, step 2. Here's what it gets and what it returns:

```plain-text
In:  Friday, around 9 am
Out: {"day": "Fri", "from": "08:00", "to": "10:00"}
```

It turns loose wording into a range your search code can use, and every request runs the same four steps. That gives a workflow three advantages over an agent:

- **Cost and speed:** one model call, where an agent makes several.
- **Testing:** you can run step 2 alone on fifty phrasings and check each range.
- **Control:** the model only returns a time range, so it can't book or cancel anything.

> 💡 When a model's output leads to an action, like rebooking a flight or paging a team, let your code or a person take that action.

---
## Practice

Your workflow's model labels each alert's likely cause. Who should decide whether to page the database team?

???

- A rule in code or a person, using the model's label.

---
## Revision

In a ???, your code fixes the order of steps and the model handles some of them.

- workflow
- agent
- agent loop
