---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Improvement after a prompt fix points to the prompt, not a tool limit.
    requiredConcepts:
      - The prompt was the problem.
    acceptedAnswers:
      - It was my prompt, not the tool.
      - The tool was fine; the input was missing.
      - The prompt needed fixing, not switching tools.
    hints:
      - What changed?
      - Did the tool change?
    tooVagueExamples:
      - Something improved.
      - It works now.
    incorrectExamples:
      - The tool lacks the capability.
      - The account lacks permission.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A problem that survives a controlled prompt change points to a tool limit.
    requiredConcepts:
      - A tool limit the prompt can't remove.
    acceptedAnswers:
      - It's a tool mismatch; consider switching.
      - The obstacle is the tool, not the prompt.
      - The tool can't do it, whatever I type.
    hints:
      - Did the prompt change help?
      - Where else could the problem be?
    tooVagueExamples:
      - Keep trying.
      - Something's off.
    incorrectExamples:
      - Add more context and retry.
      - The prompt needs more polish.

---

# When To Switch Mid-Task

---
## Content

Before you switch tools, try one careful retry:

1. Name the failure: missing source, wrong format, vague answer, lost detail, or an action it can't take.
2. Change the prompt to fix that exact failure. Add the missing context, define the output, or narrow the task.
3. Read the result.

If the result improves, the prompt was probably the problem. If the same problem comes back, the tool probably can't do the job: it can't reach the source, read the format, or take the action.

**One careful retry tells you which it is.** Rewriting the prompt over and over doesn't.

> ‼️ A common mistake is switching after one weak answer. Switch when the same limit survives a careful retry.

---
## Practice

After a weak answer, you add the missing source and specify the output. The retry improves. What does that show?

???

- The prompt, not the tool, was the main problem.

---
## Revision

You made a careful, controlled change to your prompt and the same problem keeps coming back. What does that suggest?

???

- The tool can't do this, so a prompt change won't fix it.
