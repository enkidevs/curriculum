---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Conventions matter when the system treats them differently.
    requiredConcepts:
      - When error handling differs by type.
    acceptedAnswers:
      - If the error middleware treats `AppError` specially.
      - When handlers respond differently to each type.
      - If `Error` skips handling built for `AppError`.
    hints:
      - Who catches the error?
      - Does type matter there?
    tooVagueExamples:
      - Always.
      - For consistency.
    incorrectExamples:
      - When files share a directory.
      - When the syntax is newer.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: "Local conventions carry behavior: config loading, error types, logging, and tests."
    requiredConcepts:
      - "Names at least two of: config loading, error type or handling, logging, tests."
    acceptedAnswers:
      - Its config and its logging.
      - Error handling and how settings are read.
      - The error class it throws and its tests.
    hints:
      - How do the neighbors read settings?
      - What happens when it fails?
    tooVagueExamples:
      - Style.
      - Whether it looks right.
    incorrectExamples:
      - Indentation and quote style.
      - Whether its names match popular libraries.
---

# Local Conventions

---
## Content

Asking an assistant for boilerplate, like a client for a new internal service, saves a lot of typing.

But generated code usually follows generic conventions, and in your project some conventions change how the code behaves.

Here's a generated feature-flag client:

```javascript
import { v4 as uuidv4 } from "uuid";
export async function getFlag(key) {
  const res = await fetch(process.env.FLAGS_URL + "/flags/" + key);
  if (!res.ok) throw new Error("Failed to fetch flag: " + key);
  console.log("[flags] traceId=" + uuidv4());
  return res.json();
}
```

And here's a client already in the project:

```javascript
import { config } from "../config/index.js";
import { AppError } from "../errors.js";
import { logger } from "../logger.js";
export async function getRate(pair) {
  const res = await fetch(`${config.ratesUrl}/rates/${pair}`);
  if (!res.ok) throw new AppError("RATE_LOOKUP_FAILED", { pair });
  logger.debug("rate.lookup", { pair });
  return res.json();
}
```

The project's client differs in three ways that matter:

- **Config:** it reads settings from the shared `config` module, so they load the same way as everywhere else.
- **Errors:** it throws `AppError`, which your error handling may treat differently from a plain `Error`.
- **Logging:** it uses the structured `logger`, so its events show up in your logs like the rest.

**Generated code needs these patterns before it counts as project code.**

---
## Practice

Generated code throws a bare `Error` where neighboring clients throw `AppError`. When does that matter?

???

- When middleware handles the two error types differently.

---
## Revision

You're adapting a generated API client to match its neighboring clients. Beyond formatting, what two things should you compare?

???

- How it loads config and which error type it throws.
