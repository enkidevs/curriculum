---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The prompt is missing how approvals actually work at your company.
    requiredConcepts:
      - The prompt is missing context about your company or how its approvals work.
    acceptedAnswers:
      - The prompt was missing how approvals actually work where you are.
      - Context about my company.
      - Details about how our approval process works.
      - Where approvals get stuck at our company.
      - Information about our company's situation.
      - The specifics of my company.
      - The prompt does not explain how approvals work in that company, so AI falls back to generic advice.
      - Without the local process and its problems, the assistant has nothing to tailor its suggestions to.
    hints:
      - What information would distinguish this company from any other company asking the same question?
      - Connect the missing approval process to why the response could fit anywhere.
    tooVagueExamples:
      - The prompt needs more detail.
      - It needed a better question.
    incorrectExamples:
      - The prompt did not specify a bullet-list format.
      - The prompt needed an example of a good suggestion.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Context: The Situation You're In

---
## Content

**C is for Context.** Ask yourself: **what is happening around this request?**

Ask for an onboarding checklist with no background and you may get steps that fit almost any new job.

Now include the situation:

```plain-text
Our finance team has two people. The last person in this role left after three months because nobody handed anything over. Our month-end close also depends on four undocumented spreadsheets. Write a first-month onboarding checklist for the replacement.
```

The failed handover and undocumented spreadsheets are context. They tell AI what this checklist needs to solve.

> 💡 Without context, AI answers for the average company, not yours.

---
## Practice

You ask AI, "How can we speed up invoice approvals?" and get advice that fits any company. What was missing?

???

- How approvals actually work at your company, and where they get stuck.

---
## Revision

In a prompt to rewrite a policy email, the line giving context is ???.

- "last version drew complaints"
- "under 200 words"
- "calm and factual"
- "bullets, not paragraphs"
