---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: "Comment the reason the code can't show: the external limit, ideally with its source."
    requiredConcepts:
      - "The reason for 25: it's the partner's limit."
    acceptedAnswers:
      - The partner rejects batches over 25; see their guide.
      - That 25 is a partner API limit.
      - "Why not to raise it: the partner caps batches at 25."
      - That the partner only accepts 25 at a time.
      - That 25 is the most the partner allows.
    hints:
      - Why is it 25?
      - Where could someone confirm that?
    tooVagueExamples:
      - Don't change this.
      - Explain the loop.
    incorrectExamples:
      - That the loop sends SKUs in groups.
      - Which ticket added the batching.
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Explanatory Comments

---
## Content

Assistants add comments readily, and most of what they write describes what the code already shows. A useful comment explains why, so nobody "fixes" a number that has to stay.

Here's a generated comment on a batching loop:

```javascript
// Loop through the SKUs in groups of 25 and send each group.
for (let i = 0; i < skus.length; i += 25) {
  const batch = skus.slice(i, i + 25);
  await partner.putStock(batch);
}
```

The loop and the batch size are already in the code. What the comment doesn't say is why it has to be `25`.

Here's a comment that does:

```javascript
// Partner inventory requests above 25 SKUs return 413.
// Source: Partner integration guide, "Batch limits".
for (let i = 0; i < skus.length; i += 25) {
```

- **The first line** says what breaks if someone raises the number.
- **The second line** says where to check that the limit still holds.

**Comment on the reason the code can't show, and name where that reason comes from.**

> ‼️ A common mistake is keeping the assistant's comment because it's accurate. Ask what someone changing this line would need to know, and write that.

---
## Practice

Someone raised a loop's batch size from 25 to 500, and the partner's API now rejects the requests. What should the comment above the loop have explained?

???

- Why 25: it's the partner's batch limit, with where that's documented.

---
## Revision

A partner's API guide requires a 30-second wait after a `429`. The most useful comment above `await sleep(30_000);` cites ???.

- the partner's guide
- the retry delay
- the millisecond count
- who added it
