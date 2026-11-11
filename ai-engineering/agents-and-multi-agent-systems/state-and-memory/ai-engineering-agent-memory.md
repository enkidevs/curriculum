---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The preferred seat, because it stays true across trips while fares change daily.
    requiredConcepts:
      - The preferred seat, because it stays true across trips, or because fares go stale.
    acceptedAnswers:
      - The preferred seat. Fares change every day.
      - The seat preference, since it's still true next trip.
      - Seat preference; today's fares are only useful in this run.
    hints:
      - Which fact will still be true next month?
      - What happens to a fare quote by tomorrow?
    tooVagueExamples:
      - The important one.
      - Whatever helps most.
    incorrectExamples:
      - The fare quotes, so the next run can skip searching.
      - Both, since more memory makes the agent smarter.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: In storage your application controls, such as a database, retrieved and added to the prompt in the next run.
    requiredConcepts:
      - In your own storage (a database or memory store), loaded into the next run's prompt.
    acceptedAnswers:
      - In your database, added to the prompt next time.
      - A memory store your app owns, retrieved into the next chat.
      - Saved by your code, then loaded into the next run's context.
    hints:
      - Does the model keep anything between calls?
      - How does a saved fact get back in front of the model?
    tooVagueExamples:
      - In memory.
      - Somewhere in the system.
    incorrectExamples:
      - In the model, which learns it from the chat.
      - In the context window, which carries over to next week.

---

# Agent Memory

---
## Content

An agent can recall two kinds of things. Short-term memory is its current context, everything the model receives in this run. Long-term memory is facts your app saves and brings back in later runs.

**Long-term memory lives in your database, and your code adds the relevant facts to each new run's prompt.**

Here's what each might hold for a travel-booking agent:

```plain-text
Short-term (this run):
  request: London, Monday, back Friday
  today's search results
  seat 14C, held until 6 pm
Long-term (saved between trips):
  home airport: SFO
  prefers aisle seats
  frequent flyer number: UA 55120
```

Short-term memory ends with the run. A month later, a new run's prompt begins with the saved facts:

```plain-text
Traveler: home airport SFO, prefers aisle seats
Request: Chicago, Thursday, day trip
```

So the agent's first search already uses both, though the traveler never repeated either:

```plain-text
search_flights(from="SFO", to="ORD", date="Thu",
               seat="aisle")
```

> 💡 Save facts that stay true across runs, like a seat preference. Today's fares are stale by tomorrow, so leave them out.

---
## Practice

Which belongs in your travel-booking agent's long-term memory: today's fare quotes, or the traveler's preferred seat?

???

- The preferred seat, since it stays true across trips.

---
## Revision

Your AI support agent should remember a customer's plan tier in next week's chat. Where does that fact live meanwhile?

???

- In storage your app controls, loaded into the next run's prompt.
