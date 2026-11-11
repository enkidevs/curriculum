---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: No. Each call sees only the messages in that request, so the earlier number is gone.
    requiredConcepts:
      - No, because the model only sees the messages sent in the current request.
    acceptedAnswers:
      - No. It only sees what's in this request.
      - No, the model keeps nothing between calls.
      - Not unless the app resends the earlier message.
    hints:
      - What does the model keep from one call to the next?
      - Which messages are in the latest request?
    tooVagueExamples:
      - Probably not.
      - It depends on the model.
    incorrectExamples:
      - Yes, the model remembers the conversation.
      - Yes, if the conversation was recent.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Calls are stateless, so your app resends the whole conversation and each request carries more input tokens.
    requiredConcepts:
      - The app resends the whole conversation each call, or each request includes all earlier messages.
    acceptedAnswers:
      - Every earlier message gets sent again.
      - The whole chat is resent each turn, so input grows.
      - Each request includes the full history.
    hints:
      - What does the model keep between calls?
      - What does your app send on turn 30?
    tooVagueExamples:
      - Longer chats cost more.
      - More tokens.
    incorrectExamples:
      - The model charges extra to remember the chat.
      - Later replies are always longer.

---

# Stateless Calls

---
## Content

A model API call is stateless, which means the model starts every call fresh. **It only knows what's in the messages your app sends with that request.**

So your app keeps the conversation and sends all of it every time. Here's what Harbor Hotel's booking assistant sends on a guest's third message:

```plain-text
system: You help Harbor Hotel guests with their bookings.
  Staff confirm every change by email.
user: Hi, my booking is HB-2291.
assistant: Thanks! What can I do for booking HB-2291?
user: I'd like to add Saturday night.
assistant: Sure. Same room type as the rest of your stay?
user: Yes, same room.
```

The model replies:

```plain-text
Got it. A staff member will email you to confirm
Saturday night, same room, on booking HB-2291.
```

To answer "Yes, same room", the model needed the booking number and the night from earlier messages. It had them only because your app sent them again.

If your app sent only the newest message, the model would have nothing to go on:

```plain-text
Happy to help! Which booking and which night do you mean?
```

> 💡 You pay for every resent message as input tokens on each call, so turn 30 of a chat costs more than turn 3.

---
## Practice

A guest gave their booking number earlier in the chat. Your app only sends the guest's newest message to the model. Can the model still use the booking number?

???

- No. Each call sees only the messages in that request.

---
## Revision

In your chat app, turn 30 costs more in input tokens than turn 3. Why?

???

- Your app resends every earlier message, so each request is longer.
