---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Missing context can't be fixed by rephrasing; change the evidence instead.
    requiredConcepts:
      - Gives it the missing signature or code, or fixes it yourself, rather than rewording.
    acceptedAnswers:
      - Paste getRates() so it can see the real signature.
      - Stop reprompting and give it the package's API.
      - Look up the signature and make the fix myself.
    hints:
      - What does it need to know?
      - Can rewording provide it?
    tooVagueExamples:
      - Change something.
      - Handle it differently.
    incorrectExamples:
      - Ask it to try harder.
      - Rephrase the request more clearly.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Stop reprompting when the loop stops gaining information.
    requiredConcepts:
      - "Names a stop signal: the same error survives a correction, it needs code or a schema it can't see, or answers grow without fixing the fault."
    acceptedAnswers:
      - The same wrong guess keeps coming back.
      - It needs an internal module it can't see.
      - Answers get longer but the bug stays.
    hints:
      - Did your correction stick?
      - Does it have what it needs?
    tooVagueExamples:
      - It's not working.
      - It takes too long.
    incorrectExamples:
      - The first answer missed an edge case.
      - It needed two follow-ups.
---

# When To Stop Reprompting

---
## Content

Follow-up prompts can stop helping. Say you've corrected the date helper twice, and the assistant replies:

```plain-text
Sorry, you're right. Here's the corrected version:
const holidays = getHolidays();
if (holidays.has(iso)) return next;
```

`getHolidays` needs a year and returns an array, so this code still fails. The assistant has never seen that module, and rewording your correction won't show it the signature.

**Stop reprompting when the conversation repeats without new information:**

- the same error survives a correction it acknowledged
- it needs something it can't see, like an internal module or a private schema
- each answer gets longer without fixing the detail that's wrong

Then change the evidence: paste the module or its signature, reproduce the bug, or make the small fix yourself.

---
## Practice

Twice corrected, an assistant still calls `getRates()` with wrong arguments. It's in an internal package you haven't shared. What should you do next?

???

- Share the function's signature or code instead of rewording.

---
## Revision

What sign tells you to stop reprompting an assistant about a bug and inspect the code yourself?

???

- It repeats the same mistake after accepting your correction.
