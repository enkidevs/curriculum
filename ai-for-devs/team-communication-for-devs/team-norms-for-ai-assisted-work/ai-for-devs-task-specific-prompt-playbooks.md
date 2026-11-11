---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Update the playbook's stated assumption to match the new CI output.
    requiredConcepts:
      - Change the assumption about the output format.
    acceptedAnswers:
      - Rewrite the line about one summary block to say two jobs report separately.
      - Fix the prompt's assumption about how CI reports results.
      - Update the output assumption to match the two-job setup.
    hints:
      - What does the prompt believe about CI output?
      - Is the rest of the playbook still valid?
    tooVagueExamples:
      - Update the prompt.
      - Make it work with the new CI.
    incorrectExamples:
      - Rewrite the whole playbook from scratch.
      - Add a note to check the output more carefully.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Playbooks suit repeated tasks with checkable output; this is neither.
    requiredConcepts:
      - It is a poor playbook candidate.
      - Because it's one-off with no known example to check.
    acceptedAnswers:
      - No, it's a one-time job with nothing to verify output against.
      - "Not a good fit: it won't repeat and results can't be checked."
      - No. Playbooks need repeat use and a known result to compare.
    hints:
      - Will this task come up again?
      - How would you know the playbook's output is right?
    tooVagueExamples:
      - Probably not.
      - Only if it goes well.
    incorrectExamples:
      - Yes, because migrations recur in most codebases.
      - Yes, once its output format has headings.
---

# Prompt Playbooks

---
## Content

When teammates keep asking an assistant for the same thing, like PR descriptions, one shared prompt gets everyone the same shape of result. Without it, you get five homemade versions.

A prompt playbook is a saved prompt for a recurring task, with someone responsible for keeping it current.

**It's worth saving one when a task keeps coming back with the same inputs and the same shape of output.**

Here's one for PR descriptions:

```plain-text
Task: draft a PR description.
Owner: Developer Experience.
Inputs: final diff, ticket, test output, unresolved review notes.
Shape: Change / Tests / Risks / Ticket differences.
Spot-check: compare with the approved description for PR 209.
Assumptions: CI output format v2; ticket text must be supplied;
the assistant has no issue-tracker access.
```

- **Inputs** list what the assistant has to be given.
- **Spot-check** names an approved example to compare the output with.
- **Assumptions** record what the prompt depends on, like the CI output format.

When an assumption changes, the owner updates the playbook. Otherwise the saved prompt repeats an old mistake every time someone uses it. Keep it small enough that teammates can review its changes like code.

The team can write it down as a norm:

```plain-text
Team norm: prompt playbooks name an owner, inputs, output, spot-check,
and current assumptions.
```

> ‼️ A common mistake is saving a playbook for a one-off task. If it won't come back, or you have no example to check its output against, just write the prompt.

---
## Practice

A saved CI-triage prompt assumes one summary block, but CI now runs two jobs reporting separately. What should change in the prompt?

???

- Update its stated assumption so it expects two separate job reports.

---
## Revision

A one-off migration has uncertain inputs and no example output to check against. Should it become a prompt playbook? Why?

???

- No; it won't recur and its results can't be checked.
