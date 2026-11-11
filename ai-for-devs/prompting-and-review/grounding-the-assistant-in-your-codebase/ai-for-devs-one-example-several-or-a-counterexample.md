---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Several examples plus a note on what they have in common teach a convention. Pointing out differences as well is fine.
    requiredConcepts:
      - Several examples, plus a note on what they have in common.
    acceptedAnswers:
      - Include all three and say what they have in common.
      - Give multiple exporters and state the shared cursor pattern.
      - Several examples, plus an explicit note on the common pattern.
      - Include all 3 along with what is similar and different.
      - Show all three and point out what's the same.
      - Give the examples and explain what they share.
      - Multiple examples, and say what's similar between them.
      - All three, with the common parts called out.
    hints:
      - What would one example leave unclear?
      - What should the assistant generalize?
    tooVagueExamples:
      - Show examples.
      - Give context.
    incorrectExamples:
      - Only the shortest exporter.
      - Every exporter in the repo.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Label misleading nearby code as a counterexample.
    requiredConcepts:
      - As a labeled counterexample.
    acceptedAnswers:
      - Include it marked "don't follow this".
      - As a clear example of what not to do.
      - Show it, labeled deprecated and not to copy.
    hints:
      - Might it copy that helper?
      - How do you prevent that?
    tooVagueExamples:
      - Mention it.
      - Add it for context.
    incorrectExamples:
      - As the main example.
      - As context without any label.
---

# Example Selection

---
## Content

The code you paste as examples is what the assistant copies, so choose it for what you want copied. There are three ways to use examples:

- **One example:** shows a specific shape to follow.
- **Several examples:** show a convention through what they have in common. Name that shared pattern in the prompt.
- **A counterexample:** marks nearby code that must not be copied.

Say you're fixing the invoice export that times out because it loads every row into memory. The old function sits right beside the code you're changing:

```javascript
async function buildInvoiceCsv(accountId) {
  const rows = await db.query(INVOICES_SQL, [accountId]);
  return rows.map(toCsvLine).join("\n");
}
```

**Code next to the target looks like house style, so the assistant may copy it unless you say otherwise.**

Pair a streaming example with one direct line:

```plain-text
Do not follow buildInvoiceCsv. It loads every row into memory.
```

---
## Practice

Three exporters share the same cursor and response pattern. How do you show an assistant that convention?

???

- Provide several of them and name the pattern they share.

---
## Revision

A deprecated helper next to the code you're changing looks like house style. How should your prompt include it?

???

- As a counterexample, clearly labeled not to copy.
