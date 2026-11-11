---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A workflow, because every ticket goes through the same steps.
    requiredConcepts:
      - A workflow, because the steps are the same every time.
    acceptedAnswers:
      - A workflow. The steps never change.
      - Workflow, since every ticket follows one fixed path.
      - A workflow; you can list the steps in advance.
    hints:
      - Do the steps change from one ticket to the next?
      - Could you write the steps down before the first ticket arrives?
    tooVagueExamples:
      - Whichever is cheaper.
      - It depends on the tickets.
    incorrectExamples:
      - An agent, since every ticket's text is different.
      - An agent, because summarizing needs a model.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The checkout investigation, because each finding decides what to check next.
    requiredConcepts:
      - The checkout errors request, because its steps depend on what each check finds, or can't be listed in advance.
    acceptedAnswers:
      - The checkout errors. Each finding decides the next step.
      - Finding why checkout errors doubled, since the steps aren't known upfront.
      - The checkout one; nobody can list its steps in advance.
    hints:
      - For which request could you write the steps down today?
      - Which one depends on what the first check turns up?
    tooVagueExamples:
      - The hardest one.
      - The second one.
    incorrectExamples:
      - Translating the FAQ, since it needs a model.
      - Resetting the password, since it calls a tool.

---

# Agent Fit

---
## Content

**An agent fits a task whose next step depends on what the last step found. A workflow fits a task whose steps you can list in advance.**

Here are two requests to a travel-booking assistant:

```plain-text
A: Book my usual Monday flight to Chicago.
B: My Denver flight was cancelled. I need to be at the client's office by 10 am Tuesday.
```

Request A takes the same steps every week: search, pick the usual flight, book. A workflow does that in fixed code, with at most one model call.

Request B has no fixed path. Here's one run of it:

```plain-text
1. search_flights(to="DEN", arrive_by="Tue 9 am")
   -> sold out
2. search_flights(to="DEN", date="Mon evening")
   -> flight 530, lands 9:40 pm
```

Step 2 exists only because step 1 found nothing. A different result could have sent the agent to a nearby airport instead.

A workflow would need a coded branch for each of those cases.

> 💡 Before you build an agent, try writing the task's steps down. If you can, a workflow will be cheaper and easier to test.

---
## Practice

Every night, your app summarizes each new support ticket into three fields. Agent or workflow, and why?

???

- A workflow, since every ticket goes through the same steps.

---
## Revision

Which of these requests fits an agent best, and why?

```plain-text
Reset my password
Find why checkout errors doubled this morning
Translate this FAQ into Spanish
```

???

- The checkout errors, since each finding decides the next step.
