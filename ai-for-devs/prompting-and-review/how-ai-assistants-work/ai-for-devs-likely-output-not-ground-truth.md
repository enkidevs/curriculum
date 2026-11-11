---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Verify specific claims with a test or a primary source.
    requiredConcepts:
      - Test it or check a primary source.
    acceptedAnswers:
      - Run a quick test in the console.
      - Check the official docs for what it returns.
      - Try it or read the spec.
    hints:
      - How could you check in a minute?
      - Is confidence evidence?
    tooVagueExamples:
      - Double check.
      - Be careful.
    incorrectExamples:
      - Ask the same assistant to confirm.
      - Trust it; the method is real.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A model produces likely-sounding output, so detail and fluency are not evidence.
    requiredConcepts:
      - Detail and confidence are not evidence; the model can invent exact-sounding specifics.
    acceptedAnswers:
      - It can make up precise details just as smoothly as true ones.
      - Specific isn't the same as verified.
      - The model writes what sounds likely, not what it checked.
    hints:
      - Could an invented detail sound just as precise?
      - Did anything outside the answer confirm it?
    tooVagueExamples:
      - AI makes mistakes.
      - It might be off.
    incorrectExamples:
      - Specific answers are usually reliable, so it's fine.
      - It's only a risk when the assistant sounds unsure.
---

# Probabilistic Output

---
## Content

**A model writes the answer that best fits your request, but it doesn't check whether it's true.**

That's why a made-up detail, called a hallucination, can sound just as sure as a real one.

For example, an assistant might tell you this about a JavaScript array method:

```plain-text
Use array.findLastIndex() here, but note it returns 0 rather than -1
when nothing matches.
```

The method is real, but the return value is made up. One line in Node shows the real result:

```plain-text
$ node -e 'console.log([1,2].findLastIndex(x => x > 9))'
-1
```

> ‼️ A common mistake is trusting an answer because it's specific. A made-up return value or default looks just as believable as a real one, so test it.

---
## Practice

An assistant confidently says `String.prototype.replaceAll()` changes the original string in place. What should you do before relying on that?

???

- Test it quickly or check a primary source like MDN.

---
## Revision

An assistant states a config flag's exact default. A teammate says anything that specific must be right. What's the flaw?

???

- Models generate plausible details; being specific doesn't mean anything was verified.
