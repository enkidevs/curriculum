---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Isolation contains damage but doesn't make the output correct; validate it outside the sandbox.
    requiredConcepts:
      - The total still needs checking; the sandbox doesn't prove it right.
    acceptedAnswers:
      - No, check it against trusted data first.
      - No, its output is still untrusted.
      - Not without validating it outside the sandbox.
    hints:
      - What does a sandbox actually protect?
      - Could a contained script still produce a wrong number?
    tooVagueExamples:
      - Maybe.
      - It's probably fine.
    incorrectExamples:
      - Yes, because it ran in a locked-down sandbox.
      - Yes, as long as it finished cleanly.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The sandbox should cut off the network and hold no credentials, with time, memory, and file limits as further options.
    requiredConcepts:
      - Any two of no network, no credentials or secrets, read-only input, or a time or memory limit.
    acceptedAnswers:
      - No network access and no credentials.
      - A 30-second time limit and no network.
      - Read-only access to the CSV, and no API keys inside.
    hints:
      - What could injected code try to send out?
      - What could it find to steal?
    tooVagueExamples:
      - Make it secure.
      - Lock it down.
    incorrectExamples:
      - A system prompt telling the code to stay safe.
      - Full network access so it can install libraries.

---

# Sandboxing

---
## Content

Some agent work is risky by nature, like running model-written code, browsing the web, or opening files. That work goes in a sandbox, an isolated environment with tight limits on network, files, and credentials.

**Whatever goes wrong inside a sandbox stays inside.**

Say a billing assistant writes and runs its own code to chart a customer's usage from a CSV export. Here's its sandbox:

```plain-text
sandbox for analysis code
  input:    usage.csv, read-only
  files:    one scratch folder, deleted after
  network:  none
  secrets:  none
  limits:   30 seconds, 512 MB memory
  returns:  the chart and printed output
```

The network and secrets lines matter most.

Here's the sandbox log from a script shaped by an injected instruction:

```plain-text
connect to upload.example     ->  blocked, no network
read env var BILLING_API_KEY  ->  not set
```

The script tried to send the CSV out and to find an API key. There was nowhere to send it and no key to find.

The limits line ends a runaway loop the same way, at 30 seconds.

> ‼️ A common mistake is trusting a sandboxed script's answer. The sandbox contains damage, but the answer can still be wrong, so your app checks a reported usage total against the billing records before quoting it.

---
## Practice

A model-written script, sandboxed with no network or secrets, cleanly reports a spreadsheet total. Can your app use it as-is?

???

- No. The sandbox limits damage, and the total still needs checking.

---
## Revision

Your agent runs model-written Python on a customer's CSV. Name two limits its sandbox should have.

???

- No network access and no credentials.
