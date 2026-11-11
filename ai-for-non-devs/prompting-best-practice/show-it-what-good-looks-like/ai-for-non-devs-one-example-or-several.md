---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: With only one example, varied outputs may keep repeating the specific situation that example showed.
    requiredConcepts:
      - The outputs may repeat variations of the one situation shown.
    acceptedAnswers:
      - You are likely to get many versions of the situation you showed.
      - One example does not show which parts are the general pattern, so the results may keep resembling that one case.
      - AI may copy the one-day absence as part of the pattern because it has not seen how the note changes for other cases.
    hints:
      - What evidence does AI have about how the note should change for a different kind of absence?
      - Explain why several varied examples reveal a pattern that one example cannot.
    tooVagueExamples:
      - One example is not enough.
    incorrectExamples:
      - AI refuses to start until it receives more examples.
      - One example causes every note to use a different voice.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Varied cases need several examples spanning the range.
    requiredConcepts:
      - Several examples covering the different kinds of case.
    acceptedAnswers:
      - Use a few examples, one per main type.
      - Show several varied examples.
      - Cover each main kind of case with its own example.
    hints:
      - Can one example show the range?
      - What kinds of case come up?
    tooVagueExamples:
      - More examples.
      - Better ones.
    incorrectExamples:
      - Pick one middle-of-the-range example.
      - Say the cases vary.

---

# One Example Or Several

---
## Content

One example sets a target. **Several reveal which parts form the pattern.**

Start with one:

```plain-text
Write a short note home about an absence, like this one:

"Hi Mr Patel, Amina was out on Tuesday. Please reply with a reason so we can record it. Thanks, Sam."
```

Ask for twenty different cases and many may still resemble that one-day note.

Here's the same prompt with two more examples:

```plain-text
Also match these examples:

"Hi Ms Chen, Leo was out all week. Please send the dates on his medical note. Thanks, Sam."

"Hi Mr Singh, Maya has missed three Fridays. Please reply so we can check whether she needs support. Thanks, Sam."
```

The varied cases show what stays fixed, which is the voice and structure, and what changes with each situation.

> 💡 With one example, AI copies the whole thing. With three, it can tell the voice from the circumstances.

---
## Practice

What is likely to come back when you give one example and ask for twenty notes covering very different situations?

???

- You are likely to get many versions of the situation you showed.

---
## Revision

The cases you need covered vary a lot from one to the next. How should your examples change?

???

- Add a few examples covering the main kinds of case.
