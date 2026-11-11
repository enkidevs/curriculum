---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Give the exact output format, or sample inputs with their expected output.
    requiredConcepts:
      - The exact output format it needs, or a sample input with its expected output.
    acceptedAnswers:
      - The exact output format I need.
      - An example like 1234.5 should print $1,234.50.
      - Commas for thousands and exactly two decimal places.
      - A few test cases with the exact strings I want.
    hints:
      - How would it know your invoice format?
      - What's the least ambiguous way to show it?
    tooVagueExamples:
      - More detail.
      - Clearer instructions.
    incorrectExamples:
      - Which file to put it in.
      - The function name.
---

# Prompt Specificity

---
## Content

Here are two requests for the same small JavaScript function, one vague and one specific:

**🚫 Weak**

```plain-text
Add a JavaScript function that formats a duration.
```

**✅ Stronger**

```plain-text
Add formatDuration(ms) to src/time.js. Return "2m 5s" for 125000,
"45s" for 45000, and "0s" for 0. Round down to whole seconds.
Use no dependencies. Add tests for these cases.
```

**Both go to the same assistant, so any difference in what you get back comes from the request.**

Here's what each one leaves the assistant to guess:

- **The first** doesn't say which file, what format, or how to round, so the assistant has to guess all three.
- **The second** names the file and gives the exact output for three inputs, so you can run it and check the result.

> 💡 If two developers could read your request and write different functions, the assistant can too.

---
## Practice

Your assistant writes a price formatter that prints `$1234.5` where your invoices need `$1,234.50`. What should your request have included?

???

- Sample inputs with the exact output, like 1234.5 to "$1,234.50".
