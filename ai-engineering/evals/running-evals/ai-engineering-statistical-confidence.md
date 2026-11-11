---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Report the counts and the spread across paired runs, because a single run hides variation.
    requiredConcepts:
      - The results of all the paired runs, showing the range, not just the first win.
    acceptedAnswers:
      - The range from three worse to eight better.
      - Every run's counts and how much they varied.
      - All four differences; the gain isn't stable.
    hints:
      - Which run should you believe?
      - What does the spread tell you?
    tooVagueExamples:
      - More detail.
      - The results.
    incorrectExamples:
      - The eight-case win from the first run.
      - Only the average gain, to one decimal place.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Small differences on small slices aren't reliable evidence.
    requiredConcepts:
      - Not enough to show a reliable improvement.
    acceptedAnswers:
      - Too small a gap to call an improvement.
      - Nothing reliable yet; it could be noise.
      - Not a proven gain on that slice.
    hints:
      - How much could two cases vary run to run?
      - How big is the slice?
    tooVagueExamples:
      - Some improvement.
      - It's unclear.
    incorrectExamples:
      - A proven 12.5 percent improvement.
      - The slice should be removed.

---

# Statistical Confidence

---
## Content

A small gap between two scores may be luck: a few cases that happened to go one way.

**Statistical confidence is how sure you can be that a gap between two scores would hold up on more cases and more runs.**

Here's a quick 50-case eval comparing two prompts for the refund drafter:

```plain-text
50 cases, so each case is worth 2 points
  prompt v4: 45 of 50 = 90%
  prompt v5: 46 of 50 = 92%
prompt v5, run three times: 46, 44, 47
```

The 2-point win is a single case. And v5 alone moves between 44 and 47 across runs, 88% to 94%, a swing three times the size of the gap.

The fewer cases you have, the more one case is worth. On 200 cases, one case is half a point. On a 16-case slice, one case is about 6 points.

> 💡 Report counts like 46 of 50, and the spread across reruns. A gap smaller than the run-to-run swing needs more cases or more runs before it counts.

---
## Practice

Your new prompt wins by eight cases. Three reruns of both prompts give -3, +2, and +8. What do you report?

???

- All four differences, which range from -3 to +8.

---
## Revision

A candidate passes two more cases than the baseline on a 16-case slice. What does that alone show?

???

- No reliable improvement yet; two cases can be noise.
