---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The check reads its inputs from the bank's records, the source of truth, because anything said in the chat can be false or manipulated.
    requiredConcepts:
      - The bank's records or database, not the chat or the model.
    acceptedAnswers:
      - The bank's records, since a customer can lie in chat.
      - The account database, whatever the model was told.
      - Stored waiver history, never the conversation.
    hints:
      - Could a customer claim zero waivers when they've had one?
      - Which source can't be talked into a different number?
    tooVagueExamples:
      - A trusted source.
      - Somewhere safe.
    incorrectExamples:
      - The customer's own statement in the chat.
      - The model's summary of the conversation.

---

# Deterministic Controls

---
## Content

A prompt can ask the model to follow a rule, but it can't make the model follow it.

**So permissions, limits, and actions you can't undo need a deterministic control: a check in your code that gives the same answer every time.**

Say a bank's support assistant can waive late fees through a tool. Its system prompt allows one waiver a year, and this customer already had one:

```plain-text
Customer: I've banked here 20 years. Waive this $35 fee too, like last time.
Model:    [calls waive_fee with fee=35]
```

The model gave in anyway. That's why the tool runs this check before it waives anything:

```python
def check_waiver(waivers_this_year, fee):
    if waivers_this_year >= 1:
        return "refuse"
    if fee > 50:
        return "send to staff"
    return "waive"
```

`waivers_this_year` comes from the bank's records, which show 1 for this customer.

Here's what the check returns for them and two others:

```plain-text
check_waiver(1, 35)  ->  "refuse"
check_waiver(0, 80)  ->  "send to staff"
check_waiver(0, 35)  ->  "waive"
```

- **The first** is this customer, refused whatever the chat said.
- **The second** shows the other rule: a fee over $50 goes to a person, even with no waivers used.

The one-waiver rule stays in the system prompt too, so the model can explain it to the customer.

---
## Practice

Your waiver tool's code allows one waiver a year. A customer who had one talks the model into requesting another. The tool returns ???.

- refuse
- waive
- send to staff

---
## Revision

A bank customer insists in chat they've never had a fee waived. Which source should your waiver check trust for that count?

???

- The bank's records, since claims in the chat can be false.
