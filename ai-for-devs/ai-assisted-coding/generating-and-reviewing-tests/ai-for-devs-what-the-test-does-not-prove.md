---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the JavaScript coding playground.
    // Contract: a reset token may be consumed once, and once only.

    const tokens = [{ id: "rt_88", accountId: 41, used: false }];

    function consumeResetToken(id) {
      const token = tokens.find((t) => t.id === id);
      if (!token) return null;
      return { ok: true, accountId: token.accountId };
    }

    // The generated test asserted exactly this, and passed:
    console.log(consumeResetToken("rt_88") !== null);

    // Reset the fixture before writing your stronger test:
    tokens[0].used = false;

    // Write an assertion that would have failed:
---

# Assertion Quality

---
## Content

> 👩‍💻 Your task is to: **strengthen the generated test so it proves a reset token cannot be consumed twice**.

**The generated check proves only that the first call returns something.** It never tests the "once" part of the contract.

Call `consumeResetToken("rt_88")` twice. Assert that the first call succeeds, the second returns `null`, and the token's `used` field becomes `true`. Watch the stronger assertion fail, then fix the function and rerun it.

To solve this, try using:

- calling the same function twice on the same input
- inspecting the fixture afterwards (`tokens[0].used`)
- a guard that rejects a token already consumed (`if (token.used) ...`)

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

`!== null` proves only that the return value is not `null`.

Call `consumeResetToken("rt_88")` twice and print both results. Then print `tokens[0].used`.

Nothing in the function writes to the token. Return `null` when `used` is already true, and otherwise set it before returning success.
