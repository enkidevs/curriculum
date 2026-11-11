---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the JavaScript coding playground.
    // Generated from the brief: support agents may view refund status,
    // and must not create, approve, cancel, or retry a refund.

    function canSupportAgent(action) {
      return action !== "create"
        && action !== "approve"
        && action !== "cancel";
    }

    // Call it for every behavior the brief named, and print each result:
---

# Acceptance Testing

---
## Content

> 👩‍💻 Your task is to: **run the generated permission check against every behavior in the brief, then fix any mismatch**.

The brief said support agents may view refund status, and must not create, approve, cancel, or retry a refund. This came back:

```javascript
function canSupportAgent(action) {
  return action !== "create"
    && action !== "approve"
    && action !== "cancel";
}
```

Call it once per behavior and print the result. **Running without an error is not enough; compare all five outputs with the brief.**

Before the fix, your output will begin like this:

```plain-text
view: true
create: false
```

To solve this, try using the following concepts:
- array iteration (`for (const action of [...])`)
- template literals (`` `${action}: ${result}` ``)
- console output (`console.log()`)

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

The brief named five behaviors: view, create, approve, cancel, and retry. Run all five.

Count the action names the function tests, then count the ones the brief forbids. The function tests three and the brief forbids four.

The missing one comes back the opposite of what the brief requires. Add it to the check, or invert the function so it names the one action agents may take and refuses everything else.
