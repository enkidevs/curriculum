---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # Welcome to the Python coding playground.
    # SIMULATED_CALLS holds five simulated tool calls (not a live model) that a
    # meeting-room assistant's model asked to make with book_room.
    # Your task: make check_args return a list of problems for a call with an
    # unexpected argument, a value of the wrong type, or hours outside 1 to 4.

    # book_room accepts exactly these arguments:
    #   room   a string
    #   hours  a whole number from 1 to 4

    SIMULATED_CALLS = [
        {"room": "Birch", "hours": 2},
        {"room": "Birch", "hours": 2, "notify_all": True},
        {"room": "Birch", "hours": "2"},
        {"room": "Birch", "hours": 12},
        {"room": "Cedar", "hours": 4},
    ]


    def book_room(args):
        print(f"booked {args['room']} for {args['hours']} hours")


    def check_args(args):
        # This lets every call through.
        return []


    for args in SIMULATED_CALLS:
        problems = check_args(args)
        if problems:
            print("refused:", "; ".join(problems))
        else:
            book_room(args)

---

# Tool Input Validation

---
## Content

> 👩‍💻 Your task is to make **`check_args` refuse every call that breaks the rules for `book_room`**.

A meeting-room assistant lets employees book rooms by chat, and the model books them through a `book_room` tool. The model writes each call's arguments itself, and the tool definition only guides it, so a call can still break the rules. Your code checks every call before it runs.

The rules are in the starter code's comments: the only arguments are `room` and `hours`, `room` is a string, and `hours` is a whole number from 1 to 4.

`SIMULATED_CALLS` holds five simulated tool calls. The starter `check_args` lets all of them through, and three shouldn't run. One adds `notify_all`, an argument the model made up; code that passes arguments straight on to a calendar service could email the whole office. One sends `hours` as the string `"2"`, which breaks any math on the booking's end time. One asks for 12 hours and would block Birch for the whole day.

When your version works, the loop prints this:

```plain-text
booked Birch for 2 hours
refused: unexpected argument: notify_all
refused: wrong type: hours
refused: out of range: hours
booked Cedar for 4 hours
```

Each refusal names the rule it broke, so your code can send that message back to the model as the tool result, and the model can fix the call or tell the employee about the limit. The last call asks for 4 hours, the top of the range, so it runs.

To solve this, try using the following concepts:
- spotting arguments the tool doesn't take (`for key in args`)
- checking a type (`isinstance(args["hours"], int)`)
- checking a range (`1 <= hours <= 4`)
- collecting problems in a list (`problems.append(...)`)

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

Run the starter code first. Every call prints `booked`, including the 12-hour one.

Put the allowed argument names in a set, such as `{"room", "hours"}`, and flag any key in `args` that isn't in it.

Check the type of `hours` before its range. Comparing the string `"2"` with a number raises a `TypeError`.

In Python, `True` counts as an `int`. None of these calls send a boolean for `hours`, but a stricter check adds `not isinstance(hours, bool)`.
