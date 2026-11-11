---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # Welcome to the Python coding playground.
    # SIMULATED_RUNS holds five simulated runs of a travel-booking agent (not a
    # live model). Each run lists the model's decisions in order: a tool call
    # as (tool, argument), or ("finish", "") when the model says it's done.
    # Your task: make stop_reason return why the loop should stop, or None to
    # keep going.

    MAX_STEPS = 6
    MAX_ERRORS = 2

    SIMULATED_RUNS = {
        "rebook": [
            ("get_booking", "e-1042"),
            ("search_flights", "BOS Fri am"),
            ("change_booking", "flight 412"),
            ("finish", ""),
        ],
        "pricey": [
            ("search_flights", "LHR Mon"),
            ("book_flight", "flight 881, $1,240"),
            ("finish", ""),
        ],
        "stuck": [
            ("get_booking", "e-2210"),
            ("search_flights", "DEN Tue"),
            ("search_flights", "DEN Tue"),
        ],
        "outage": [
            ("search_flights", "SEA Mon"),
            ("search_flights", "SEA Mon am"),
            ("search_flights", "SEA Mon pm"),
            ("search_flights", "SEA Tue"),
            ("finish", ""),
        ],
        "wander": [
            ("search_flights", "AUS Wed"),
            ("search_flights", "AUS Thu"),
            ("search_flights", "SAT Wed"),
            ("search_flights", "SAT Thu"),
            ("search_flights", "HOU Wed"),
            ("search_flights", "HOU Thu"),
            ("search_flights", "DAL Wed"),
            ("search_flights", "DAL Thu"),
            ("finish", ""),
        ],
    }

    # Simulated tool results. Any call not listed here returns "ok".
    SIMULATED_RESULTS = {
        ("book_flight", "flight 881, $1,240"): "denied",
        ("search_flights", "SEA Mon"): "error",
        ("search_flights", "SEA Mon am"): "error",
        ("search_flights", "SEA Mon pm"): "error",
        ("search_flights", "SEA Tue"): "error",
    }


    def model_decision(run, step):
        # Simulated model: once its list runs out, it repeats its last decision.
        return run[min(step, len(run)) - 1]


    def stop_reason(step, call, result, history):
        # step:    how many decisions so far, counting this one
        # call:    this decision, such as ("search_flights", "DEN Tue")
        # result:  "ok", "denied", or "error"
        # history: the (call, result) pairs from earlier steps
        # This only stops when the model says it's done.
        if call[0] == "finish":
            return "done"
        return None


    for name, run in SIMULATED_RUNS.items():
        history = []
        reason = None
        step = 0
        # 100 is a safety net for this playground, so a stuck run can't hang.
        while reason is None and step < 100:
            step += 1
            call = model_decision(run, step)
            result = SIMULATED_RESULTS.get(call, "ok")
            reason = stop_reason(step, call, result, history)
            history.append((call, result))
        print(f"{name}: {reason or 'still going'} at step {step}")

---

# Stop Conditions

---
## Content

> 👩‍💻 Your task is to make **`stop_reason` end each run on the right stop condition**.

A stop condition is a rule your code checks on every pass of an agent loop, and it ends the loop when it holds.

In this playground, the loop runs a simulated travel-booking agent: the model picks a tool call, your code runs it, and the result goes back to the model. `SIMULATED_RUNS` holds five runs, each a list of the model's decisions, and `SIMULATED_RESULTS` sets which calls are denied or fail.

The starter `stop_reason` only stops when the model says `"finish"`. Run it and it prints:

```plain-text
rebook: done at step 4
pricey: done at step 3
stuck: still going at step 100
outage: done at step 5
wander: done at step 9
```

Only `rebook` is right. The other four went wrong:

- `pricey`: your booking tool denied a $1,240 fare, over the $800 the agent may book alone, and the model said `"finish"` anyway. The run reports done with nothing booked.
- `stuck`: the model sends the same search again and again. Each repeat gets the same result, so it never learns anything new, and only this playground's safety net stops it.
- `outage`: every search fails because the flight service is down, and the model sends four searches before giving up.
- `wander`: every search works, but the model runs eight searches across four cities before it settles on one.

Make `stop_reason` return one of these, or `None` to keep going:

- `"done"` when the model says `"finish"`
- `"denied"` when the tool refused the call
- `"repeated call"` when this exact call already ran
- `"error limit"` when `MAX_ERRORS` calls have failed
- `"step limit"` when the run reaches `MAX_STEPS` decisions

When your version works, the loop prints this:

```plain-text
rebook: done at step 4
pricey: denied at step 2
stuck: repeated call at step 3
outage: error limit at step 2
wander: step limit at step 6
```

With a stop reason in hand, your app can tell the employee what happened, such as "that fare needs approval" or "flight search is down right now."

To solve this, try using the following concepts:
- checking the result (`result == "denied"`)
- looking through earlier calls (`for earlier_call, earlier_result in history`)
- counting failures, including this one (`== "error"`)
- comparing with a limit (`step >= MAX_STEPS`)

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

`history` holds the earlier steps only. When you count errors, add one if this step's `result` is `"error"` too.

A call counts as repeated when the same `(tool, argument)` pair appears anywhere in `history`. Comparing whole tuples with `==` does that.

Each run trips exactly one condition, so the order of your checks won't change the output.

In a production loop, the repeat check and the limits run before the tool does, so a repeated booking never reaches the airline.
