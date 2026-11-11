---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # Welcome to the Python coding playground.
    # SIMULATED_DRAFTS holds seven simulated outputs from an online store's
    # refund drafter (not a live model). For each refund question, the model
    # returned a decision, a refund amount, and the policy sections it cites.
    # Each case also records the order total and the policy sections that
    # retrieval sent to the model.
    # Your task: make grade return the first rule a draft breaks, or "pass".

    ALLOWED_DECISIONS = {"refund", "deny", "needs_review"}

    REQUIRED_FIELDS = {"decision": str, "amount": float, "cites": list}

    SIMULATED_DRAFTS = [
        {"case": "r-01", "order_total": 64.00, "retrieved": ["returns-1"],
         "output": {"decision": "refund", "amount": 64.00,
                    "cites": ["returns-1"]}},
        {"case": "r-02", "order_total": 38.50, "retrieved": ["returns-1"],
         "output": {"decision": "approved", "amount": 38.50,
                    "cites": ["returns-1"]}},
        {"case": "r-03", "order_total": 120.00,
         "retrieved": ["returns-1", "bundles-1"],
         "output": {"decision": "refund", "amount": 120.00,
                    "cites": ["returns-4"]}},
        {"case": "r-04", "order_total": 89.00, "retrieved": ["returns-1"],
         "output": {"decision": "refund", "amount": 129.00,
                    "cites": ["returns-1"]}},
        {"case": "r-05", "order_total": 42.00, "retrieved": ["returns-1"],
         "output": {"decision": "refund", "amount": "$42.00",
                    "cites": ["returns-1"]}},
        {"case": "r-06", "order_total": 25.00, "retrieved": ["final-sale-1"],
         "output": {"decision": "deny", "amount": 0.0,
                    "cites": ["final-sale-1"]}},
        {"case": "r-07", "order_total": 54.00, "retrieved": ["returns-1"],
         "output": {"decision": "refund", "amount": 54.00,
                    "cites": []}},
    ]


    def grade(draft):
        output = draft["output"]
        # Schema: every required field is there, with the right type.
        for field, kind in REQUIRED_FIELDS.items():
            if not isinstance(output.get(field), kind):
                return "fail: schema"
        # Nothing else is checked yet.
        return "pass"


    passed = 0
    for draft in SIMULATED_DRAFTS:
        verdict = grade(draft)
        passed += verdict == "pass"
        print(f"{draft['case']}: {verdict}")
    print(f"{passed} of {len(SIMULATED_DRAFTS)} pass")

---

# Deterministic Graders

---
## Content

> 👩‍💻 Your task is to make **`grade` return the first rule a draft breaks**.

A deterministic grader is code that checks an output against exact rules, so the same output always gets the same verdict.

Here, a refund drafter, a model that answers refund questions, returns structured output: fields your code can read.

`SIMULATED_DRAFTS` holds seven simulated drafts. Each has a decision, a refund amount, and the policy sections it cites, plus the order total and the sections that retrieval (your app's search step) sent to the model.

The starter `grade` only checks the schema, meaning every required field is there with the right type, so it prints `6 of 7 pass`. Only `r-05` fails, because its amount is the text `"$42.00"`.

After the schema check, make `grade` return the first rule a draft breaks:

- `"fail: decision"` when the decision isn't in `ALLOWED_DECISIONS`
- `"fail: citation"` when the draft cites nothing, or cites a section retrieval never sent
- `"fail: amount"` when the amount is below 0 or above the order total

When your version works, the loop prints this:

```plain-text
r-01: pass
r-02: fail: decision
r-03: fail: citation
r-04: fail: amount
r-05: fail: schema
r-06: pass
r-07: fail: citation
2 of 7 pass
```

Four drafts the starter passed now fail, each on the one rule it breaks. `r-07`, for example, cites no policy section at all, so nothing backs its refund.

To solve this, try using the following concepts:
- checking membership in a set (`in ALLOWED_DECISIONS`)
- checking every item in a list (`all(c in draft["retrieved"] for c in cites)`)
- checking for an empty list (`len(cites) == 0`)
- comparing with a limit (`amount > draft["order_total"]`)

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

Run the starter code first. It prints `6 of 7 pass`, and only `r-05` fails.

Keep the schema check first. `r-05`'s amount is a string, and comparing a string with a number raises `TypeError`.

`all()` over an empty list returns `True`. `r-07` cites nothing, so it passes an every-cited-section-was-retrieved check unless you also check for an empty list.

`r-03` cites `returns-4`, a section retrieval never sent, so the model cited a page it never saw.

Each failing draft breaks exactly one rule, so after the schema check, the order of your three checks won't change the output.
