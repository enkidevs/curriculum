---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Details that identify which company is meant, such as its location or industry.
    requiredConcepts:
      - Identifying details for the company, such as its location, industry, or website.
    acceptedAnswers:
      - Which Kestrel, like its city or industry.
      - Details identifying the company, such as where it's based.
      - The company's location so the worker finds the right one.
    hints:
      - How would the worker know which Kestrel?
      - What separates two companies with the same name?
    tooVagueExamples:
      - More context.
      - Better instructions.
    incorrectExamples:
      - A longer deadline for the worker.
      - The orchestrator's full conversation history.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A strong handoff adds identifying details, a scope, a return format, and what to leave alone; any two of these pass.
    requiredConcepts:
      - Any two of identifying details, a scope, a return format, or what to leave alone.
    acceptedAnswers:
      - Identifying details and a return format.
      - Which years to cover, and what to skip.
      - Where the company is based, and two numbers with sources or "not found".
    hints:
      - How would the worker know which Acme you mean?
      - What should the worker send back, and in what shape?
    tooVagueExamples:
      - More context.
      - Clearer instructions.
    incorrectExamples:
      - A friendlier tone and a longer prompt.
      - The model the worker should run on.

---

# Agent Handoffs

---
## Content

When an orchestrator passes work to a worker agent, it writes a message called a handoff. The worker starts with only its own instructions and tools.

**So the handoff is all the worker knows about the task.**

Here are two handoffs for the finances part of a company brief:

**🚫 Name only**
```plain-text
Look into Kestrel's finances.
```

**✅ Company identified**
```plain-text
Look into Kestrel's finances. Kestrel Logistics is a
trucking company based in Columbus, Ohio. Find its
revenue for 2024 and 2025 from its annual reports.
Return two numbers, each with a source link, or
"not found". Skip news and hiring; other workers
cover those.
```

- **The first** got back "Kestrel's revenue was £38M in 2025, up 6%." That's a different Kestrel, a UK firm, reported with full confidence, because nothing said which one.
- **The second** got back $410M and $455M, each with a link. The city and industry settle which Kestrel, the years narrow the search, and the return format lets the orchestrator drop the numbers straight into the brief.

"Not found" gives the worker an honest answer when no revenue is published, so it won't guess. The last line stops it repeating other workers' searches.

---
## Practice

Two companies are named Kestrel, and a worker researched the wrong one. What was most likely missing from its handoff?

???

- Details identifying the company, like where it's based.

---
## Revision

Your orchestrator hands a worker agent only "Research Acme's finances." What two additions would make that handoff stronger?

???

- Details identifying which Acme, and the format to return.
