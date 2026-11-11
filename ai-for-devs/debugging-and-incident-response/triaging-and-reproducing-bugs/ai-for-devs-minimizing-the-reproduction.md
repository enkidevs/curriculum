---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the JavaScript coding playground.
    // This reproduces the usage page bug: the keys come back in the
    // wrong order. Cut it down to the smallest case that still does.

    const keys = [
      { name: "web-checkout", requests: "100" },
      { name: "mobile-app", requests: "10" },
      { name: "reporting", requests: "87" },
      { name: "billing-sync", requests: "9" },
    ];

    keys.sort((a, b) => (a.requests > b.requests ? -1 : 1));
    console.log(keys.map((k) => k.name));
---

# Minimal Reproductions

---
## Content

> 👩‍💻 Your task is to: **cut this reproduction down until nothing left in it can be removed**.

Run the starting code and record its incorrect order. Then remove one record at a time, rerunning after every change. Remove fields the comparator never reads next. **If a removal makes the bug disappear, restore it.**

Stop with the smallest pair of values whose text order disagrees with their numeric order. Do not fix the comparator yet: the goal is to isolate what triggers the bug, not solve it while the evidence is still changing.

To solve this, try using the following concepts:

- array literals (`["9", "10"]`)
- the comparator's two arguments (`(a, b) => ...`)
- a final contrast between `["9", "10"]` and `[9, 10]`

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

Two records are enough, as long as their counts have different digit lengths.

The `name` field never reaches the comparator. Sort the count values directly and the case gets shorter again.

Keep the same comparator and compare `["9", "10"]` with `[9, 10]`. The different result isolates value type as the trigger.
