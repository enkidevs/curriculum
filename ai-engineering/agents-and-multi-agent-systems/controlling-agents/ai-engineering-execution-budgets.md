---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Stop further calls, save the run's progress, and give the employee a clear next path.
    requiredConcepts:
      - Stop further model and tool calls.
      - "A defined next path for the employee: a hand-off to a person, a partial result, or a resumable run."
    acceptedAnswers:
      - Halt, save progress, and pass it to a person.
      - Stop the run and tell the employee they can resume it.
      - End it, save what's done, and show what's held so far.
    hints:
      - What stops another call after the cap?
      - What does the waiting employee need to hear?
    tooVagueExamples:
      - Handle it.
      - Let them know.
    incorrectExamples:
      - Give it more steps since it's close to booking.
      - End silently and let the employee start over.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An execution budget, such as a cap on steps, tool calls, or time, ends the run even when every step is valid.
    requiredConcepts:
      - An execution budget, or a cap on steps, tool calls, time, or tokens.
    acceptedAnswers:
      - An execution budget, like a step cap.
      - A cap on steps or time for the task.
      - A budget on tool calls per request.
    hints:
      - Is any single search wrong here?
      - What limit holds no matter how good each step looks?
    tooVagueExamples:
      - A rule.
      - Better instructions.
    incorrectExamples:
      - A repeated-call check, since each search is the same.
      - A system prompt line telling it to stop searching.

---

# Execution Budgets

---
## Content

Some agent runs never end even though every step looks fine, like a travel-booking agent that keeps checking one more date for a cheaper fare.

A limit on how much one task can use stops them. That limit is called an execution budget.

Here's a budget per trip request:

```plain-text
steps:       12 model calls
tool calls:  15
time:        90 seconds
tokens:      80,000
```

Each cap guards something different:

- **Tool calls** get their own cap, because one model reply can ask for more than one.
- **Time** protects the employee waiting on screen.
- **Tokens**, the word-sized pieces you pay for, limit what one request costs.

Here's part of a run that hits the step cap:

```plain-text
step 3   hold_seat(flight="881")
         -> seat 14C, held until 6 pm
...
step 11  search_flights(date="Thu") -> $1,175
step 12  search_flights(date="Fri") -> $1,180
stopped: step limit (12 of 12)
```

**When a run hits a cap, your code saves its progress and gives the employee a way forward:**

```plain-text
I hit my search limit before booking. Seat 14C on
flight 881 is held until 6 pm. Tap Resume to continue,
or a travel coordinator will finish the booking.
```

> 💡 Set each cap a little above what normal runs use, based on your logs.

---
## Practice

Your travel-booking agent hits its step cap before booking. What should the run do, and what does the employee get?

???

- Stop, save the run, then escalate or offer to resume.

---
## Revision

Every step your agent takes is valid, but it keeps searching for a cheaper fare. What control stops it?

???

- An execution budget, such as a cap on steps or time.
