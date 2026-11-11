---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the JavaScript coding playground.
    // A support agent is looking up one refund's status.

    const refunds = [
      { id: 1, accountId: 7, status: "settled" },
      { id: 2, accountId: 9, status: "pending" },
    ];

    function getRefundStatus(id) {
      return refunds.find((r) => r.id == id).status;
    }

    // Try the cases this change was never written for:
---

# Missing Edge Cases

---
## Content

> 👩‍💻 Your task is to: **test the generated refund lookup against missing, string, and cross-account inputs, then make every result intentional**.

The existing tests cover a numeric ID for a refund the agent may access. **Add cases for `999`, the URL-style ID `"2"`, and refund `2` requested by an agent on account `7`.**

After your fix, the output might look like:

```plain-text
same account: pending
string ID on same account: pending
missing refund: error
different account: error
```

To solve this, try using the following concepts:
- number conversion (`Number()` and `Number.isInteger()`)
- strict equality (`===`)
- missing-value checks (`if (!refund)`)
- account comparison (`refund.accountId !== accountId`)

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

Run the original function with `999`, `"2"`, and refund `2` for account `7`. Write down which result is accidental in each case.

`find()` can return `undefined`, so check the result before reading `.status`. Convert a URL ID deliberately before comparing with `===`.

Pass the agent's account into the function. Compare it with the refund's `accountId` before returning the status.
