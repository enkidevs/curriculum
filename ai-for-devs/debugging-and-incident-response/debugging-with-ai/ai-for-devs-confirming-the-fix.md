---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the JavaScript coding playground.
    // Checkout reuses a cached payment method list while the cart id
    // is unchanged. Run it for a cart whose country changes.

    const catalog = { US: ["visa", "paypal"], CA: ["visa", "interac"] };
    const cache = new Map();

    function paymentMethodsFor(cart) {
      const key = cart.id;
      if (!cache.has(key)) {
        cache.set(key, { country: cart.country, methods: catalog[cart.country] });
      }
      const entry = cache.get(key);
      return entry.country === cart.country ? entry.methods : [];
    }

    // Cart c-1 in the US, then the same cart in CA, then the US again:
    console.log(paymentMethodsFor({ id: "c-1", country: "US" }));
    console.log(paymentMethodsFor({ id: "c-1", country: "CA" }));
    console.log(paymentMethodsFor({ id: "c-1", country: "US" }));
---

# Fix Verification

---
## Content

> 👩‍💻 Your task is to: **reproduce the country-change bug, correct the cache key, and prove the fix with the same calls**.

Run the code as it is. It calls the function for cart `c-1` in the US, then the same cart in CA, then the US again. The CA call returns an empty list because both countries use the cart ID as the cache key.

Change the key so entries for the same cart and different countries do not collide, then run the same calls again. Expect the correct methods every time; the repeated US result shows the cache still works.

To solve this, try using:

- building the key from more than one field (`` `${cart.id}:${cart.country}` ``)
- Map lookups (`cache.has()`, `cache.get()`, `cache.set()`)

This minimal reproduction isolates country. The production contract also depends on billing country, currency, and cart total, which need their own tests before the full fix is confirmed.

The same reproduction failing before the change and passing after it confirms the country-change case.

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

Before the change, the calls print `visa/paypal`, an empty list, and `visa/paypal`.

The entry was stored under `c-1`, so the CA call is a cache hit. The country recorded on that entry is still `US`, the requested country is `CA`, and the function hands back `[]` rather than fetching CA's methods.

Put the country into `key` and run again. The results should be `visa/paypal`, `visa/interac`, and `visa/paypal`.
