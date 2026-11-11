---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Scoring each answer independently against fixed anchors removes the order effect; running both orders and keeping consistent verdicts is a fallback.
    requiredConcepts:
      - Score each answer on its own against fixed anchors, or run each pair in both orders and keep only consistent verdicts.
    acceptedAnswers:
      - Grade each answer alone with fixed anchors.
      - Drop pairwise comparisons; score answers one at a time.
      - Run both orders and only count verdicts that agree.
    hints:
      - What if the answers were never shown side by side?
      - What could stay the same for every answer?
    tooVagueExamples:
      - A better grader.
      - More consistent grading.
    incorrectExamples:
      - Use a larger model as the grader.
      - Tell the grader to ignore the order.
      - Tell it to compare and evaluate both.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Verbosity bias, where the judge favors longer outputs whether or not the extra text helps.
    requiredConcepts:
      - Verbosity bias, or length bias.
    acceptedAnswers:
      - Verbosity bias.
      - Length bias; it prefers longer replies.
      - Verbosity, since the longer reply wins.
    hints:
      - Which bias is about length?
      - Does the order or the author of the reply matter here?
    tooVagueExamples:
      - A bias.
      - It's unfair.
    incorrectExamples:
      - Position bias.
      - Self-preference.

---

# Judge Biases

---
## Content

A judge's scores are model output too, so they carry model quirks. The known ways a judge leans when it scores are called judge biases.

Here's a judge comparing the same two drafted refund replies, A and B, shown in both orders:

```plain-text
A shown first: judge prefers A
B shown first: judge prefers B
```

Swapping the order flipped the verdict, so position decided it. That's position bias: the judge favors a reply for where it sits in the prompt, here the first slot.

**Scoring each reply alone against the rubric removes position bias.**

Two more biases are common:

- **Verbosity bias:** the judge favors longer replies, so a padded reply can beat a short correct one. Comparing its scores with people's labels on the same replies shows it.
- **Self-preference:** the judge favors text from its own model. A judge built on a different model from the one that wrote the replies reduces it.

---
## Practice

Your LLM judge compares two replies side by side and favors whichever it sees first. What setup avoids this?

???

- Score each reply on its own against a fixed rubric.

---
## Revision

Your LLM judge scores longer replies higher, even when the extra text adds nothing. Which bias is this?

```plain-text
position bias
verbosity bias
self-preference
```

???

- Verbosity bias, which favors longer replies.
