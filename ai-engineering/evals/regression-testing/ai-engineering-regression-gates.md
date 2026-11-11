---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # Welcome to the Python coding playground.
    # BASELINE and CANDIDATES hold simulated eval results for an online store's
    # refund drafter (not a live run). Every version ran on the same 200 cases
    # with the same graders. Each entry is (passed, cases), for the whole set
    # and for each slice, a group of cases that share a property.
    # Your task: make gate block a candidate that drops on any protected slice,
    # even when its overall score goes up.

    PROTECTED = ["final-sale items", "not in English"]

    BASELINE = {
        "overall": (176, 200),
        "final-sale items": (18, 20),
        "not in English": (9, 16),
        "no order number": (47, 56),
    }

    CANDIDATES = {
        "prompt v5": {
            "overall": (182, 200),
            "final-sale items": (18, 20),
            "not in English": (10, 16),
            "no order number": (49, 56),
        },
        "prompt v6": {
            "overall": (186, 200),
            "final-sale items": (15, 20),
            "not in English": (10, 16),
            "no order number": (52, 56),
        },
        "prompt v7": {
            "overall": (170, 200),
            "final-sale items": (18, 20),
            "not in English": (9, 16),
            "no order number": (44, 56),
        },
    }


    def gate(baseline, candidate):
        # Returns ("ship", []) or ("block", reasons).
        # This only compares the overall score.
        reasons = []
        before, _ = baseline["overall"]
        after, _ = candidate["overall"]
        if after < before:
            reasons.append(f"overall: {before} -> {after}")
        return ("block" if reasons else "ship"), reasons


    for name, results in CANDIDATES.items():
        decision, reasons = gate(BASELINE, results)
        line = f"{name}: {decision}"
        if reasons:
            line += " (" + "; ".join(reasons) + ")"
        print(line)

---

# Regression Gates

---
## Content

> 👩‍💻 Your task is to make **`gate` block a candidate that drops on a protected slice**.

A regression gate is a check that compares a candidate's eval results with the baseline, the live version's results, and blocks the release when something important got worse.

A refund drafter, a model that answers refund questions, has three candidate prompts.

Each ran on the same 200 cases as the live prompt, and `CANDIDATES` holds their simulated results overall and by slice, a group of cases that share a property.

The starter `gate` only compares the overall score. Run it, and `prompt v6` ships: it gains 10 cases overall while final-sale items drop from 18 to 15 of 20, the slice where a wrong "yes" costs a refund the store didn't owe.

Make `gate` also block when any slice in `PROTECTED` passes fewer cases than in `BASELINE`, with one reason per slice that dropped.

When your version works, the loop prints this:

```plain-text
prompt v5: ship
prompt v6: block (final-sale items: 18 -> 15)
prompt v7: block (overall: 176 -> 170)
```

`prompt v6` is now blocked on the slice that fell, and `prompt v5`, which held every protected slice, still ships.

To solve this, try using the following concepts:
- looping over a list (`for name in PROTECTED:`)
- unpacking a tuple (`before, _ = baseline[name]`)
- comparing the same key in two dicts (`candidate[name]`)
- collecting every reason before deciding (`reasons.append(...)`)

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

Run the starter code first. `prompt v6` ships, even though final-sale items fell from 18 to 15.

Every slice has the same number of cases in every run, so you can compare pass counts directly.

Keep the overall check and add the protected slices after it. A loop over `["overall"] + PROTECTED` does both.

`prompt v7` also drops on `"no order number"`, from 47 to 44. The gate stays quiet about it because that slice isn't in `PROTECTED`. Add it to the list and run again to see a second reason.
