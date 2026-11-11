---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Authorization must be enforced in the retrieval or data layer before any source enters model context.
    requiredConcepts:
      - Permission checks are left to the model instead of enforced in code before it sees the data.
    acceptedAnswers:
      - The model is doing access control; filter in code first.
      - Salary files already reached the model; filter them in code.
      - Access should be filtered before retrieval, not by prompt.
    hints:
      - Can the model be trusted to enforce access?
      - Where should restricted files be removed?
    tooVagueExamples:
      - It's risky.
      - Too much responsibility.
    incorrectExamples:
      - Nothing, the prompt filters it.
      - Salary files should be ranked lower.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Tenant isolation is enforced in the retrieval filter, from the verified caller, before ranking.
    requiredConcepts:
      - Access filters using the verified tenant or caller.
    acceptedAnswers:
      - Filters bound to the authenticated tenant and caller.
      - The verified tenant applied as a hard filter first.
      - Tenant-scoped access filters from the caller's identity.
    hints:
      - What stops the other company's documents from being candidates?
      - Where does the tenant identity come from?
    tooVagueExamples:
      - Security settings.
      - Tenant awareness.
    incorrectExamples:
      - The tenant name in the model instruction.
      - A ranking boost for the caller's documents.

---

# Retrieval Authorization

---
## Content

A RAG system searches your documents and adds the best passages to the prompt. If search can return a document, the model can quote it, whoever is asking.

**Retrieval authorization filters what search can return by what the person asking may read, before any of it reaches the model.**

Say Priya, an engineer, asks your company's internal assistant about bonuses. Each chunk in the index carries an access label stored with it.

Here's the search:

```plain-text
question: What's the bonus budget for Q3?
asked by: priya (all-staff, engineering)
filter:   access in [all-staff, engineering]
removed:  "Q3 bonus pool: $410,000"  (finance)
kept:     "Bonuses are paid in March"  (all-staff)
```

The filter comes from Priya's sign-in, and the search applies it before ranking.

The finance chunk is the closest match, so without the filter, the reply would start "The Q3 bonus pool is $410,000." Instead, the model answers from what's left:

```plain-text
Bonuses are paid in March. I don't see a Q3
budget figure in the documents available to me.
```

> ‼️ A common mistake is asking the model to "only use documents Priya may see." The finance chunk is still in its context, one careless reply away from Priya.

---
## Practice

Your search assistant retrieves salary files too, then its prompt says "Only use files this employee may open." What's wrong?

???

- The model is doing access control; the search should filter first.

---
## Revision

Your assistant's search index serves two customer companies. What must it apply before ranking so neither sees the other's documents?

???

- An access filter built from the signed-in person's verified company.
