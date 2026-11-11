---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Trust the destination, not the stated count.
    requiredConcepts:
      - The revised line is checked in the real field.
    acceptedAnswers:
      - Test it in the actual field again.
      - Paste it in and see if it fits.
      - Check it where it will be published.
    hints:
      - Which count do you trust?
      - Where does it need to fit?
    tooVagueExamples:
      - Check it.
      - Count again.
    incorrectExamples:
      - Check the count label.
      - Check it after publishing.
      - Why it's overflowing.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A vague length word gives no exact limit or required parts, so the draft may not fit the channel.
    requiredConcepts:
      - It gives no exact number or limit (or no required parts).
    acceptedAnswers:
      - It doesn't say 40 characters, so the AI guesses how short.
      - No number, so "short" could mean anything.
      - It doesn't say how short or what to include.
    hints:
      - How short is short?
      - What does the ad actually allow?
    tooVagueExamples:
      - It's vague.
      - Too simple.
    incorrectExamples:
      - It lacks the source material.
      - It omits the reader's demographics.

---

# Length And Format Constraints

---
## Content

"Keep it short" doesn't tell AI how short.

Give it the channel's exact limits and the parts each piece needs: headline, body, call to action, links, line breaks, or labels. Here's a prompt for ads with fixed limits:

```plain-text
Create three ad pairs.
Headline: 40 characters maximum, including spaces.
Body: 125 characters maximum.
One call to action. No hashtags.
Show the character count after each line.
```

**AI's own character counts help you spot problems, but they can be wrong.**

> 💡 Paste the result into the real publishing field or a reliable counter before approval.

---
## Practice

An ad headline labeled "40 characters" overflows the publishing field. After revising it, how do you make sure the new line fits?

???

- Paste the new line into the field and check it fits.

---
## Revision

Why is "keep it short" a weak instruction for an ad with a 40-character headline limit?

???

- It gives no exact limit, so the AI has to guess.
