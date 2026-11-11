---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The stop reason, which shows the reply hit the output token limit.
    requiredConcepts:
      - The stop reason (or finish reason) field.
    acceptedAnswers:
      - The stop reason. It will say the token limit was hit.
      - The finish reason, which shows it ran out of tokens.
      - The stop reason field in the response.
    hints:
      - Which field says why the model stopped writing?
      - Why might a reply end mid-word?
    tooVagueExamples:
      - The metadata.
      - The status.
    incorrectExamples:
      - The HTTP status code.
      - The temperature setting.
      - The error message.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Stop Reasons

---
## Content

Every model response includes a stop reason, a field that says why the model stopped writing. The names vary by provider, but the common ones are:

- **Finished:** the reply is complete
- **Token limit:** the reply hit your cap on output tokens
- **Tool call:** the model wants your code to run a function
- **Filtered:** a safety filter ended the reply

Say your app turns meeting notes into a JSON list of action items. Here's a response that hit the token limit:

```plain-text
stop reason: token limit
text: {"action_items": [
  {"owner": "Priya", "task": "Send the Q3 budget draft"},
  {"owner": "Tom", "task": "Book the venue for
```

The JSON stops mid-sentence. A strict parser throws an error, which at least tells you something broke.

A lenient parser that closes the brackets for you is worse. It saves Tom's task as "Book the venue for", and every item after it is lost with no error at all.

> 💡 Check the stop reason before you parse. A token-limit stop means the reply is incomplete, even if your parser doesn't complain.

---
## Practice

Your extractor sometimes gets JSON cut off mid-field. Which response field tells you why?

???

- The stop reason, which shows it hit the token limit.

---
## Revision

When a response's stop reason is a tool call, your code should ??? next.

- run the function
- parse the reply
- retry the request
- show the reply
