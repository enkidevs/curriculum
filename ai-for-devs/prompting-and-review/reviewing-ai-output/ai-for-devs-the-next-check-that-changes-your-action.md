---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Whatever the config shows tells you what to do next, so it's worth reading first.
    requiredConcepts:
      - Links the value to a next step, dropping the theory if it's fine or running the load test if it's low.
    acceptedAnswers:
      - If the timeout is fine, you drop the theory. If it's low, the load test is worth running.
      - Whatever it shows decides whether to run the load test.
      - Fine means drop the theory; low means run the load test.
      - If it's low, load test it. If not, look elsewhere.
      - "Fine: drop it. Low: load test."
      - Low means load test, fine means move on.
      - It tells me if the load test is worth it.
      - It tells me whether to bother with the load test.
      - If it's low, run the load test.
    hints:
      - What would you do if the timeout looks fine?
      - And if it's low?
    tooVagueExamples:
      - It's useful.
      - It gives more info.
      - Either way, you know what to do next.
    incorrectExamples:
      - It will confirm the theory.
      - The load test is never worth running.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The schema rules out the index theory, so drop it and look for another cause.
    requiredConcepts:
      - Drop the theory and look at other causes.
    acceptedAnswers:
      - Rule out the index and check what else could slow search.
      - Drop the index idea and look for another cause.
      - Discard it and profile the query for another cause.
    hints:
      - Is the index theory still possible?
      - What else could explain it?
    tooVagueExamples:
      - Keep investigating.
      - Rethink.
    incorrectExamples:
      - Ask the assistant to confirm the index theory.
      - Add a second index on the column anyway.
---

# Picking The Next Check

---
## Content

Once an assistant suggests a likely cause, there are usually several ways to test it, and they don't all earn their time.

**Run the cheapest check whose result changes what you do next.**

For the checkout bug, the leading theory is that shipping country is missing from the cache key.

Here are the checks you could run:

```plain-text
read the cache-key code    2 min
reproduce on staging       15 min
search all call sites      20 min
ask the assistant again    no new evidence
```

Reading the code comes first, because either result moves you:

- **Country is in the key:** the theory is wrong, so drop it and look elsewhere.
- **Country is missing:** the staging reproduction is now worth its 15 minutes.

Asking the assistant again costs little but can't change anything, since it has no new evidence to work from.

---
## Practice

You think a request timeout is set too low. Before running a load test, you check its value in the config. How does that value help you decide what to do next?

???

- If it's fine, drop the theory. If it's low, run the load test.

---
## Revision

You think product search is slow because `products.name` has no index, but the schema shows the index exists. What do you do next?

???

- Drop the index theory and look at other causes.
