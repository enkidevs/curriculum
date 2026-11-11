---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Give both values, each labeled with its version and cited, since the customer's version is unknown.
    requiredConcepts:
      - Give both values, labeled by version, or say the answer depends on the version.
    acceptedAnswers:
      - Say it depends on the version and cite both.
      - List the v4 and v5 timeouts with their sources.
      - Give both numbers, each tied to its version.
    hints:
      - Which version is the customer on?
      - What happens if the answer picks one?
    tooVagueExamples:
      - Be careful.
      - Explain it.
    incorrectExamples:
      - Use the newer version's value.
      - Average the two timeouts.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The model can only name a passage's version if it sees it, so the label has to carry the version.
    requiredConcepts:
      - The model only sees what's in the prompt, so it can't name a version the label leaves out.
    acceptedAnswers:
      - The model can only name versions it can see.
      - Without it, the model can't tell which version a passage covers.
      - So the model can say which number belongs to which version.
    hints:
      - Where does the model learn which version a passage covers?
      - What does the model see of a chunk besides its text?
    tooVagueExamples:
      - For clarity.
      - It's good practice.
    incorrectExamples:
      - So search can filter by version.
      - So the embedding includes the version number.

---

# Source Citations

---
## Content

A source citation, like `[2]`, links a claim in an answer to the passage it came from, so people and automated checks can verify it.

**Citations matter most when sources disagree.**

For "What's the default data retention?", a docs bot covering two product versions retrieves one passage from each:

```plain-text
[1] Admin guide, v4: Data is kept for 30 days.
[2] Admin guide, v5: Data is kept for 90 days.
```

The customer hasn't said which version they use.

**🚫 Picks one**

```plain-text
Data is kept for 90 days by default [2].
```

**✅ Names both**

```plain-text
It depends on your version: 30 days in v4 [1]
and 90 days in v5 [2].
```

- **The first** picks one source and sounds certain, so a v4 customer gets the wrong number.
- **The second** names the conflict and cites both sources.

A prompt line like "If sources disagree, say so and cite each one" gets you the second.

> 💡 The model can only name versions it can see, so write each chunk's version into its label, like "Admin guide, v4".

---
## Practice

Retrieved passages give different default timeouts for v4 and v5, and the customer hasn't named a version. What should the answer do?

???

- Give both values, each labeled with its version and citation.

---
## Revision

Your app writes each passage's product version into its source label, such as "Admin guide, v4". Why?

???

- The model can only name versions it can see.
