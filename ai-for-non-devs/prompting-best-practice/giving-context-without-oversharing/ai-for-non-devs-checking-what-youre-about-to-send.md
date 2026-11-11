---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The last check before sending is whether the tool is approved for the data in the prompt.
    requiredConcepts:
      - Whether the tool is allowed to receive that personal or confidential data.
    acceptedAnswers:
      - That this tool is allowed to see client data.
      - Whether our rules allow those details in this tool.
      - Remove the account number unless the tool is approved for it.
    hints:
      - What is this tool allowed to receive?
      - What can't be taken back once sent?
    tooVagueExamples:
      - Check it carefully.
      - Look for mistakes.
    incorrectExamples:
      - That the prompt sounds professional.
      - Whether the email thread is long enough.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Identifying and sensitive employee details stay out; aggregates can go in.
    requiredConcepts:
      - Names and sensitive personal details like medical reasons.
    acceptedAnswers:
      - Names and medical leave reasons.
      - Anything identifying staff or their health.
      - Employee names plus why they were off.
    hints:
      - Which columns identify people?
      - Which are sensitive?
    tooVagueExamples:
      - Personal stuff.
      - Private columns.
    incorrectExamples:
      - Department names and headcounts.
      - Month labels and anonymized totals.

---

# The Check Before Sending

---
## Content

**Before sending, check whether your prompt contains data the tool isn't approved to receive**:

- **Personal data:** names, addresses, account numbers, health information, or HR records.
- **Credentials:** passwords, API keys, private access links, or security codes.
- **Confidential work:** protected client material, partner plans, or unsigned deals.
- **Unreleased business information:** results, forecasts, pricing, or announcements.

Never paste credentials. For everything else, follow your organization's rules on which tools can see which data. If you are unsure, stop and ask.

> ‼️ Anonymizing lowers exposure. It does not make an unapproved tool approved.

---
## Practice

Your prompt includes a pasted client email thread with names and an account number. What do you check before sending?

???

- Whether this tool is approved to receive those details.

---
## Revision

The AI tool isn't approved for employee data. A staffing sheet has names, departments, monthly headcounts, and medical leave reasons. Which columns stay out?

???

- Employee names and reasons for medical leave.
