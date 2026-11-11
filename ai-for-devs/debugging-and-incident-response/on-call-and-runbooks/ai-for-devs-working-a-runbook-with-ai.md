---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An AI summary of a runbook doesn't replace its earlier checks; complete them in order first.
    requiredConcepts:
      - Complete the earlier runbook checks before the restart.
    acceptedAnswers:
      - Check the provider status and look for a retrying message first.
      - Run steps 1 and 2 and log what I find.
      - Work through the runbook in order before restarting.
    hints:
      - What did the assistant skip?
      - What could a restart miss?
    tooVagueExamples:
      - Be careful.
      - Read the runbook.
    incorrectExamples:
      - Restart it; the assistant picked a runbook step.
      - Restart first, then do the checks if it fails.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A summary that drops a safety limit can't replace the original procedure.
    requiredConcepts:
      - Use the original runbook, because the summary dropped a safety limit.
    acceptedAnswers:
      - Switch back to the full runbook, since the summary lost a safety rule.
      - Follow the source runbook; the summary can't be trusted to keep every limit.
      - Use the original, because the summary dropped the never-both-regions line.
    hints:
      - Which document is the source of truth?
      - What else might the summary have lost?
    tooVagueExamples:
      - Be careful.
      - Double check.
    incorrectExamples:
      - Keep using the summary and just remember the missing line.
      - Keep using the summary once the assistant confirms the rest is right.
---

# Runbook Execution

---
## Content

A runbook is the team's written procedure for a known failure. During an incident, it's tempting to ask an assistant for the next step instead of working through it. A short answer can skip the checks that make that step safe.

At 09:56, an image-processing queue is still growing. The runbook says:

```plain-text
RUNBOOK: image queue backlog
1. Confirm the backlog is growing, not one stuck job.
2. Compare the enqueue rate against the last 24 hours.
3. Check for a poison job: one job id failing and requeuing.
4. Scale the worker pool. Do not scale past 35 without owner approval.
5. Record each completed step in the incident channel.
```

You ask an assistant for the next step, and it replies:

```plain-text
Scale the worker pool from 20 to 35.
```

That's step 4 on its own. It left out:

- **Steps 1 to 3:** the checks that tell you whether more workers will help at all.
- **The limit:** anything past 35 needs owner approval.
- **Step 5:** recording each result for the rest of the team.

Step 3 matters most here. If there's a poison job[1], more workers just retry it faster, and the backlog stays.

**Keep the original runbook open, do its checks in order, and record each result.** The assistant can help you find your place, but the runbook stays the source of truth.

> ‼️ A common mistake is following a summary of the runbook. If it drops a safety limit, like the cap at 35, nothing warns you. Go back to the original.

---
## Practice

Your runbook for a stuck email queue says:

```plain-text
1. Check the mail provider's status page.
2. Check for one message failing and retrying.
3. Restart the sender service.
```

An assistant replies, "Restart the sender service." What should you do before restarting?

???

- Do steps 1 and 2 in order and record each result.

---
## Revision

An assistant's runbook summary drops one line: "Never fail over both regions at once." What should you do, and why?

???

- Use the original runbook; the summary lost a safety limit.

---
## Footnotes

[1: Poison Job]
A single job that fails, returns to the queue, and fails again. More workers may let it fail and requeue faster, adding load while useful work remains blocked.
