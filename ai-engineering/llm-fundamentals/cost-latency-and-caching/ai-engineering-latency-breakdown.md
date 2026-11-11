---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Shorter answers, since generation time grows with the number of output tokens.
    requiredConcepts:
      - Fewer output tokens, or shorter answers.
    acceptedAnswers:
      - Make the answers shorter.
      - Cap the output tokens.
      - Ask the model for a briefer reply.
    hints:
      - Which step grows with every token the model writes?
      - What would halve that step?
    tooVagueExamples:
      - Make it faster.
      - Optimize the pipeline.
    incorrectExamples:
      - Speed up the document search.
      - Add more servers to the queue.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Streaming, so people start reading at the first token instead of waiting for the whole reply.
    requiredConcepts:
      - Streaming the reply.
    acceptedAnswers:
      - Streaming.
      - Stream the reply as it's written.
      - Show tokens as they arrive.
    hints:
      - Does the app have to wait for the last token?
      - When does the first token arrive?
    tooVagueExamples:
      - Make it faster.
      - A better UI.
    incorrectExamples:
      - A larger model.
      - Raising the output token cap.

---

# Latency Breakdown

---
## Content

The wait for a model's answer has several parts, and one of them is usually much bigger than the rest.

Here's one request to an internal help assistant that searches IT docs, calls a tool, then writes an answer, with illustrative numbers:

| Step | Time |
|---|---|
| Queue | 0.1 s |
| Doc search | 0.3 s |
| Tool call | 0.8 s |
| First token | 0.5 s |
| Writing 400 tokens | 4.0 s |
| Total | 5.7 s |

The first token row is the time to first token (TTFT), how long the model takes to start its reply.

**Writing takes 70% of the wait, because a model writes tokens at a steady rate, here about 100 per second.** A 200-token answer would save about 2 seconds, more than all the other steps combined.

> 💡 To make answers faster, ask for shorter ones. To make them feel faster, stream them: here, people would start reading at 1.7 seconds.

---
## Practice

Your assistant's answers take 8 seconds, and most of that is writing the reply. What's the biggest lever?

???

- Shorter answers, since writing time grows with each token.

---
## Revision

Writing a 400-token answer takes about 4 seconds. What lets people start reading before it's finished?

???

- Streaming, so text shows from the first token.
