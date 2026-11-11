---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The message may be wrong, because the model can report a hold that its tool call never made; only the tool's result shows what happened.
    requiredConcepts:
      - The model's message can claim a hold that failed, or only the tool result proves it.
    acceptedAnswers:
      - The hold call may have failed even though the message says it worked.
      - The model can claim success after an error.
      - Only the tool's result shows whether the hold exists.
    hints:
      - What did the hold_seat call itself return?
      - Can a model write something its tools didn't do?
    tooVagueExamples:
      - It might be wrong.
      - Models make mistakes.
    incorrectExamples:
      - Nothing, since the model saw the hold happen.
      - The message is fine once it names the seat number.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The task's position comes from the saved state record, not from the conversation.
    requiredConcepts:
      - The saved state record outside the conversation.
    acceptedAnswers:
      - From the state record stored outside the conversation.
      - It reads its saved task state, like a database row.
      - The stored record of completed steps.
    hints:
      - What survives when conversation turns are removed?
      - Which store does your application own?
    tooVagueExamples:
      - Somewhere safe.
      - It works out where it was.
    incorrectExamples:
      - From the model's summary of the removed turns.
      - From the last tool message still in context.

---

# Conversation History As State

---
## Content

An agent's conversation history holds the request, the model's replies, and each tool call with its result.

**The model's replies record what it said, and that can differ from what its tools actually did.**

Here's the end of a travel-booking agent's conversation while it holds a seat:

```plain-text
hold_seat(flight="881")
  -> error: timeout
Model: I've held seat 22A for you until 6 pm.
```

The tool call failed, but the model's reply says it worked. A restart that resumes from this last message believes in a hold that doesn't exist.

The history can also lose steps. In a long run, your code may trim it to fit the context window, the most text a model can take in one call.

A rule that drops the oldest messages first removes the search and the hold.

> 💡 Resume a task from its state record. It holds what each tool call actually returned, and trimming the conversation never touches it.

---
## Practice

Your agent's last message says "I've held your seat." Why shouldn't a restart treat that as proof the hold exists?

???

- The hold call may have failed even though the message says it worked.

---
## Revision

An agent resumes a task after its conversation was trimmed. Where does it find where the task stands?

???

- In its saved state record, which trimming doesn't touch.
