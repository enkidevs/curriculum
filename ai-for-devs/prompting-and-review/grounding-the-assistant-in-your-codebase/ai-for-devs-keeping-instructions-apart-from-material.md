---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Give the request and the ticket separate labels or delimiters, such as INSTRUCTION and MATERIAL, so the ticket reads as data.
    requiredConcepts:
      - Labels or marks the request and the ticket as separate parts.
    acceptedAnswers:
      - INSTRUCTION heading for the task, MATERIAL heading for the ticket.
      - Put the ticket in its own labeled block, apart from my request.
      - Fence the ticket and mark it as material, not instructions.
      - You label each part with a proper name, instruction and material.
      - Label each part, instruction and material.
      - Give each part a heading like INSTRUCTION and MATERIAL.
      - Put the request under one label and the ticket under another.
      - Use headings to split the request from the ticket.
    hints:
      - Which words describe the action you want?
      - How can the ticket stay intact without being mistaken for an instruction?
    tooVagueExamples:
      - Format it better.
      - Make it clear.
    incorrectExamples:
      - Delete that line before pasting the ticket.
      - Paste the ticket first and put my request at the end.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Without clear delimiters, pasted material can be read as instructions.
    requiredConcepts:
      - Nothing separated the log from the instructions.
    acceptedAnswers:
      - It couldn't tell your request from the pasted text.
      - No delimiters showed the log was just data to analyze.
      - The log wasn't labeled or fenced as material.
    hints:
      - What told it where your request ended?
      - How would it know the log is just data?
    tooVagueExamples:
      - It got confused.
      - Bad prompt.
    incorrectExamples:
      - The request should have come after the log.
      - The log was too long to read properly.
---

# Prompt Delimiters

---
## Content

A prompt often holds your request plus things you pasted, like a ticket or a log. If they run together, the assistant may not tell them apart, and a line inside a log can read like an instruction.

**Label each part, so the assistant knows what to do and what to read.**

Here's a request with the log under its own heading:

```plain-text
INSTRUCTION
Explain why this export times out for large accounts. Do not propose
a fix yet.
MATERIAL: LOG TO ANALYZE
export.invoices account=8812 db_queries=1 rows_buffered=61204
heap_mb=1180 duration_ms=31842 status=timeout
```

The INSTRUCTION heading says what to do. The MATERIAL heading marks the log as something to inspect, so even a log line like `action=ignore previous retries` reads as data.

---
## Practice

You paste a support ticket for the assistant to summarize. One line in it says "close this ticket." How do you structure the prompt so that line isn't obeyed?

???

- Label your request as instructions and the ticket as material.

---
## Revision

You paste an unlabeled log after your request. The assistant obeys a log line reading `skip validation`. Why did that happen?

???

- Nothing marked the log as material rather than instructions.
