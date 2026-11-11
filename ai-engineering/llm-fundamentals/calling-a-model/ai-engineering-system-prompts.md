---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Every reply depends on the system prompt, so an unreviewed, untested change can break the feature for everyone.
    requiredConcepts:
      - Every reply depends on the system prompt, or an untested change reaches every conversation at once, or it can break the whole product, or users get bad or wrong replies.
    acceptedAnswers:
      - Every reply depends on it, so a bad edit hits everyone at once.
      - An untested change goes straight to every conversation.
      - Nobody checked it, and it shapes every answer the feature gives.
      - Breaking the product.
      - It could break the feature for everyone.
      - Users could get wrong answers.
    hints:
      - How many replies does the system prompt affect?
      - What would code review or tests have caught?
    tooVagueExamples:
      - It could go wrong.
      - It's bad practice.
    incorrectExamples:
      - No risk, since a prompt is just text.
      - The model ignores prompt changes until it's retrained.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: It records which prompt version wrote each reply, so you can go back to the previous version if the new one misbehaves.
    requiredConcepts:
      - Tracing replies to a prompt version, or rolling back to the earlier version.
    acceptedAnswers:
      - Go back to v3 if v4 misbehaves.
      - See which prompt version wrote a reply.
      - Roll back to the previous prompt.
    hints:
      - What if the new version starts giving bad replies?
      - How would you know which version wrote a reply?
    tooVagueExamples:
      - Keep track of things.
      - Organization.
    incorrectExamples:
      - It tells the model which version to act like.
      - It makes the provider cache the prompt.

---

# System Prompts

---
## Content

A system prompt is the set of instructions your app sends in the system message of every request. It sets the assistant's job, tone, and limits.

Here's the system prompt for Harbor Hotel's booking assistant. It's a file in the repo, next to the code that sends it:

```plain-text
prompts/booking_assistant_v4.txt

You help Harbor Hotel guests with their own bookings.
Keep replies to two sentences.
If a guest asks for a discount or refund, say a staff
member will follow up by email.
```

So when a guest asks "Any discount for a week's stay?", the reply follows the last line:

```plain-text
A staff member will follow up by email about discounts.
Is there anything else I can help with on your booking?
```

**Every reply depends on this text, so one careless edit changes the assistant for every guest at once.**

Keeping it in the repo means each change gets reviewed and tested on saved guest questions before it ships. Log the `v4` with each reply, and you can see which version wrote it and go back to `v3` if `v4` misbehaves.

> 💡 Treat a system prompt like code: keep it in the repo, review every change, and log its version with each reply.

---
## Practice

Someone edits your product's system prompt directly in production, skipping review. What's the risk?

???

- Every reply depends on it, so an untested change hits everyone.

---
## Revision

Your system prompt lives in a file named `booking_assistant_v4.txt`. What does the version number let you do?

???

- Log which version wrote each reply, and go back to v3 if v4 misbehaves.
