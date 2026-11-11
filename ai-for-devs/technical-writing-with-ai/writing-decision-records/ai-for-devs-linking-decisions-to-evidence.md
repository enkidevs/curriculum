---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Link the inputs needed to rerun the measurement.
    requiredConcepts:
      - "Names at least two of: the script at a version, the data or environment, the command run, the raw result."
    acceptedAnswers:
      - The script at a commit and the dataset used.
      - The benchmark command and the setup it ran on.
      - Script, data, command, and the raw numbers.
    hints:
      - Could someone rerun it from the record?
      - What would they need?
    tooVagueExamples:
      - The results.
      - A link to the benchmark.
    incorrectExamples:
      - The headline number alone.
      - The names of people who agreed.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Link primary evidence, not a summary of it.
    requiredConcepts:
      - The original experiment and results.
    acceptedAnswers:
      - The actual benchmark run and the thread where it was discussed.
      - "Primary sources: the experiment output and discussion."
      - The raw benchmark and original conversation.
    hints:
      - What did the summary summarize?
      - Can a summary be checked?
    tooVagueExamples:
      - Better evidence.
      - More detail.
    incorrectExamples:
      - A longer summary with the number.
      - Another record citing the summary.
---

# Evidence Links

---
## Content

A decision record often summarizes the benchmark behind it, and a summary leaves a verdict nobody can check. Months later, someone asking whether the decision still holds has nothing to rerun.

Say a decision record says:

```plain-text
Measurements on production-scale data showed acceptable latency.
```

Nobody can rerun "acceptable latency." Link the experiment itself:

```plain-text
Evidence
- script: scripts/bench/tagSearch.js at commit 7b31c2
- data: search-restore-2026-08-14, 1.4M items
- command: node scripts/bench/tagSearch.js search-restore-2026-08-14
- result: p95 210 ms
- discussion: #eng-search/2026-08-15
```

- **Script and command** let someone run the same measurement on newer code.
- **Data** says what it ran against, so a rerun is comparable.
- **Result** gives the p95[1] number to compare with.
- **Discussion** shows how the team read the result.

**With these links, anyone can check the original basis or repeat the measurement later.**

> ‼️ A common mistake is linking an assistant's summary of the benchmark. Link the script, data, command, and result it came from.

---
## Practice

A decision record says a new cache "cut page load times in half." Which two links would let someone rerun that measurement?

???

- The versioned benchmark script and the command that ran it.

---
## Revision

A decision record's only evidence is an AI summary of a benchmark. What should it link instead?

???

- The original experiment, its results, and the source discussion.

---
## Footnotes

[1: p95]
The value at or below which about 95% of measurements fall. A p95 of 210 ms does not describe the slowest 5%.
