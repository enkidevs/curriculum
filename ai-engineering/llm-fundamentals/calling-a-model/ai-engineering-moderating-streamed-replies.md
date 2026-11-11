---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Check the text in chunks as it arrives, and pull the message if a chunk gets flagged.
    requiredConcepts:
      - Checking the text in pieces (chunks, sentences, or small batches) while it streams in, or pulling the message once a piece is flagged.
    acceptedAnswers:
      - Check each chunk as it arrives and pull the message if one is flagged.
      - Moderate the stream sentence by sentence.
      - Run the check on partial text and remove flagged replies.
      - They run it in batches of a full sentence or larger so they catch it in time.
      - Check each message as it arrives, don't wait for multiple at once.
      - Check each piece as it comes in.
    hints:
      - Does the check have to wait for the whole reply?
      - What can the app do once a chunk is flagged?
    tooVagueExamples:
      - Moderate it.
      - Be careful.
    incorrectExamples:
      - Check only the finished reply.
      - Turn moderation off for streamed replies.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: People see the reply as it streams, before the moderation check on the full reply can run.
    requiredConcepts:
      - People read the text before the check runs, or the check needs the full reply.
    acceptedAnswers:
      - People read it before the check runs.
      - The check needs the whole reply, but people see the start first.
      - Flagged text reaches the screen before moderation catches it.
    hints:
      - When does the check have the full reply?
      - What has someone already read by then?
    tooVagueExamples:
      - It's less safe.
      - Moderation might miss things.
    incorrectExamples:
      - Streaming makes the reply less accurate.
      - Streamed replies skip moderation entirely.

---

# Moderating Streamed Replies

---
## Content

Moderation is a check that flags harmful or off-policy text. **When you stream replies, people can read the text before the check runs.**

Here's a support chat that streams each reply to the screen and checks the finished reply:

```plain-text
0.4s  screen: "You could dispute the charge"
1.2s  screen: "...with your bank, and they'll"
2.0s  screen: "...refund you within days."
2.1s  moderation: flagged, off-policy advice
```

The check caught the problem, but the person had already read the whole reply. Removing the message at 2.1 seconds can't undo that.

**So streaming apps usually check the text in chunks as it arrives, about a sentence at a time, and remove the message as soon as a chunk is flagged.**

That way, a problem shows on screen for one sentence at most.

---
## Practice

Your chat streams replies and still needs moderation. How do streaming apps usually run the check?

???

- Check the text in chunks as it arrives, and pull flagged messages.

---
## Revision

Your chat runs a moderation check on each finished reply. Why is streaming replies straight to the screen risky?

???

- People read the first sentences before the check on the full reply runs.
