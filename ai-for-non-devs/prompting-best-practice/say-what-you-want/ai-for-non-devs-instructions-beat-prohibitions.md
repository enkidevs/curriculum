---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A prohibition rules out one option without naming the result you want instead.
    requiredConcepts:
      - It rules something out without naming the desired alternative.
    acceptedAnswers:
      - It rules out one option without naming the one you wanted.
      - It rules out one kind of answer without telling AI what the desired answer should look like instead.
      - Knowing what not to do still leaves the assistant guessing at the positive target.
    hints:
      - What does "do not make it long" remove, and what does it leave undecided?
      - Contrast avoiding an output with naming the length, reader, and ending you want.
    tooVagueExamples:
      - Negative instructions are weaker.
      - It's too negative.
    incorrectExamples:
      - Prohibitions always make the answer sound negative.
      - The assistant overlooks every prohibition in a long prompt.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A bad example works when a good version beside it still provides a positive target.
    requiredConcepts:
      - The good version beside the bad one supplies a target.
    acceptedAnswers:
      - It arrives with the good version beside it, so there is still a target.
      - The bad example is shown beside a good one, so AI can see both what to avoid and the positive target to aim for.
      - The contrast defines the boundary while the good example still shows what the desired output looks like.
    hints:
      - What information is present in a good-and-bad pair that is missing from "do not do that"?
      - Explain which part of the pair gives the assistant something positive to copy.
    tooVagueExamples:
      - Examples are more concrete.
    incorrectExamples:
      - Bad examples work because they are always more detailed than instructions.
      - A bad example is useful even when no desired alternative is shown.

---

# Instructions, Not Prohibitions

---
## Content

**Tell AI only what to avoid, and it still has to guess what you want.**

Compare:

**🚫 Weak**

```plain-text
Write an FAQ answer about the new visitor sign-in rules. Don't make it long, use policy language, or blame reception.
```

**✅ Stronger**

```plain-text
Write an FAQ answer about the new visitor sign-in rules. In under 80 words, explain the steps in everyday language without assigning blame. End with who to email if the badge printer is down.
```

The first prompt rules things out. The second sets the length, language, content, and way to handle blame.

> 💡 A bad example is different. Shown beside a good one, it still points AI at the target. A "don't" on its own doesn't.

---
## Practice

Why is a prohibition such as "do not make it long" weaker than a positive instruction?

???

- It rules out one option without naming the one you wanted.

---
## Revision

Why does a bad example help beside a good one, when "do not do that" alone does not?

???

- It arrives with the good version beside it, so there is still a target.
