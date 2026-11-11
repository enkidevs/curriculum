---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # Welcome to the Python coding playground.
    # credit_service simulates the credits service behind a food-delivery app's
    # support chat (not a live system). CREDITS is the service's own record of
    # every credit it has issued. Timeouts are simulated by the outcomes below.
    # Your task: make credit_service issue each credit once, however many times
    # it's retried, by checking the request's idempotency key against CREDITS.

    CREDITS = []


    def credit_service(order_id, amount, key, outcome):
        # outcome is simulated: "ok" answers normally, "timeout_before_write"
        # times out before saving, "timeout_after_write" saves, then times out.
        if outcome == "timeout_before_write":
            raise TimeoutError("no response after 3 s")
        CREDITS.append({"order_id": order_id, "amount": amount, "key": key})
        if outcome == "timeout_after_write":
            raise TimeoutError("no response after 3 s")
        return "issued"


    def issue_credit(order_id, amount, key, outcomes):
        # Calls the service once per simulated outcome, retrying after a timeout.
        for outcome in outcomes:
            try:
                return credit_service(order_id, amount, key, outcome)
            except TimeoutError:
                print(f"  {order_id}: timed out, retrying")
        return "failed"


    # Each request: order, credit in dollars, idempotency key, simulated outcomes.
    REQUESTS = [
        ("A-5120", 8.00, "chat-311:credit:A-5120", ["timeout_after_write", "ok"]),
        ("A-5133", 5.00, "chat-318:credit:A-5133", ["ok"]),
        ("A-5147", 12.00, "chat-322:credit:A-5147", ["timeout_before_write", "ok"]),
        ("A-5133", 3.00, "chat-325:credit:A-5133", ["ok"]),
    ]

    for order_id, amount, key, outcomes in REQUESTS:
        print(f"{order_id}: {issue_credit(order_id, amount, key, outcomes)}")

    total = sum(c["amount"] for c in CREDITS)
    print(f"{len(CREDITS)} credits issued, ${total:.2f} total")

---

# Retry Idempotency

---
## Content

> 👩‍💻 Your task is to make **`credit_service` issue each credit once, however many times it's retried**.

An idempotency key is a unique ID attached to one action, so the service doing it can recognize a retry of something it already did.

Your food-delivery app's support chat can give a customer a credit for a late order. `issue_credit` calls a simulated credits service and retries after a timeout. Run the starter and it prints this:

```plain-text
  A-5120: timed out, retrying
A-5120: issued
A-5133: issued
  A-5147: timed out, retrying
A-5147: issued
A-5133: issued
5 credits issued, $36.00 total
```

Four requests made 5 credits. For order A-5120, the service saved the $8 credit and then timed out before answering, so the retry saved it again.

Each request already carries a key, like `chat-311:credit:A-5120`. Make `credit_service` look for that key in `CREDITS`, the service's own record, before writing anything. If the key is there, return `"already issued"`.

When your version works, it prints this:

```plain-text
  A-5120: timed out, retrying
A-5120: already issued
A-5133: issued
  A-5147: timed out, retrying
A-5147: issued
A-5133: issued
4 credits issued, $28.00 total
```

Only A-5120's line changes, and the total drops to $28.00. A-5147 still gets its credit, because its first try timed out before anything was saved. The second A-5133 line is a different chat about the same order, with its own key, so that credit goes through too.

To solve this, try using the following concepts:
- looping over a list of dicts (`for c in CREDITS:`)
- comparing one field (`c["key"] == key`)
- returning early (`return "already issued"`)
- checking a whole list at once (`any(c["key"] == key for c in CREDITS)`)

In a real service, the key check and the write happen together, for example through a unique constraint on the key column, so two requests arriving at the same moment can't both pass the check.

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

Each entry in `CREDITS` is a dict with `"order_id"`, `"amount"`, and `"key"` fields, so `c["key"]` gives you the key to compare.

Both timeouts raise the same `TimeoutError`, and only one of them saved a credit. From inside `issue_credit`, you can't tell them apart. `CREDITS` can.

The check belongs at the very top of `credit_service`, before the simulated timeouts, so it runs on every try.

Matching on `order_id` instead of `key` blocks the second A-5133 credit, which is a separate request. The key names one action; the order ID only names the order.
