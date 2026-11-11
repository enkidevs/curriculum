---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # Welcome to the Python coding playground.
    # SIMULATED_REPLIES holds five simulated model replies (not a live model)
    # to one request: "Return this invoice's total as JSON with amount_usd."
    # Your task: make read_amount return the amount as a number when a reply
    # contains a JSON object with amount_usd, and None otherwise.

    import json

    SIMULATED_REPLIES = [
        '{"amount_usd": 1240.5, "due_days": 30}',
        'Here is the extracted data: {"amount_usd": 1240.5, "due_days": 30}',
        '{"amount_usd": "$1,240.50", "due_days": 30}',
        '{"total_usd": 1240.5, "due_days": 30}',
        'The invoice total is $1,240.50, due in 30 days.',
    ]


    def read_amount(reply):
        # This assumes every reply is clean JSON with a numeric amount_usd.
        data = json.loads(reply)
        return round(data["amount_usd"], 2)


    for reply in SIMULATED_REPLIES:
        print(read_amount(reply))

---

# Output Variance

---
## Content

> 👩‍💻 Your task is to make **`read_amount` return a number or `None` for every reply** in `SIMULATED_REPLIES`.

An invoice extractor asks a model for an invoice's total as JSON. Models pick each token with a weighted random draw, so the same request can come back in different shapes.

`SIMULATED_REPLIES` holds five simulated replies to that one request, and all five describe the same total, $1,240.50.

The starter code assumes every reply is clean JSON with a number in `amount_usd`. Run it, and it prints the first amount, then crashes:

```plain-text
1240.5
Traceback (most recent call last):
  ...
json.decoder.JSONDecodeError: Expecting value: line 1 column 1 (char 0)
```

The second reply starts with "Here is", so `json.loads` fails on its very first character.

When your version works, the loop prints this:

```plain-text
1240.5
1240.5
1240.5
None
None
```

The first three replies contain a JSON object with `amount_usd`, so they come back as a number.

The last two have no `amount_usd` field to read, and returning `None` lets your app retry them or flag them for review.

To solve this, try using the following concepts:
- finding JSON inside other text (`reply.find("{")`, `reply.rfind("}")`)
- catching a parse error (`try` / `except json.JSONDecodeError`)
- reading a field that may be missing (`data.get("amount_usd")`)
- turning text into a number (`.replace(",", "")`, `float()`)

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

Run the starter code first. Each reply that crashes it shows you one more shape to handle.

The second reply has text before the `{`. Slicing from the first `{` to the last `}` gives `json.loads` just the object.

The third reply stores the amount as the text `"$1,240.50"`. Remove the `$` and the comma, then call `float()`.

The fourth reply names the field `total_usd`. `data.get("amount_usd")` returns `None` for it, so return early when that happens.

The fifth reply has no `{` at all, so `reply.find("{")` returns `-1`. Check for that before slicing, or let your `except` catch the parse error.
