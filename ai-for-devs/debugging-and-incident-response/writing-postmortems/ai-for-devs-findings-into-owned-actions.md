---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An action needs an observable finish line, such as a specific check for the failure.
    requiredConcepts:
      - An alert tied to reset emails failing or stopping.
    acceptedAnswers:
      - Page on-call if the mail provider rejects reset sends.
      - Alert when reset email sends drop to zero.
      - Alert on auth errors from the mail provider.
    hints:
      - What went silent in the incident?
      - What should trigger the alert?
    tooVagueExamples:
      - Better email monitoring.
      - An alert for resets.
    incorrectExamples:
      - Alert when the password reset page loads slowly.
      - Assign it to an owner with a ticket.
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Actions need a tracking home.
    requiredConcepts:
      - A tracking location.
    acceptedAnswers:
      - A ticket number.
      - An agreed tracking place.
      - A link to where it's tracked.
    hints:
      - Where would you check progress?
      - What's missing?
    tooVagueExamples:
      - Follow-up.
      - Visibility.
    incorrectExamples:
      - A backup owner.
      - The incident that suggested it.
---

# Postmortem Actions

---
## Content

A postmortem ends with follow-up actions, and vague ones quietly never get done.

Here's an action list for the checkout bug, where payment methods didn't refresh after a shipping-country change:

**🚫 Weak**

```plain-text
Improve test coverage for the checkout cache.
Improve monitoring around payment methods.
Tighten the release process.
```

Nobody can say when "improve monitoring" is done, and nobody is named to do it.

**Each action needs a result you can check, an owner, and a ticket that tracks it.**

**✅ Stronger**

```plain-text
Add a checkout test that changes shipping country and asserts the
payment method list refreshes. Owner: Priya. Track: CHK-4102.

Alert on any payment_methods.refresh skipped line where
shipping_country_changed=true. Owner: Dan. Track: CHK-4103.

Add a release-checklist step comparing cache dependencies with the
refresh contract. Owner: Priya. Track: CHK-4104.
```

- **The test** is done when it changes the country and the method list refreshes.
- **The alert** fires on the exact log line from this incident.
- **The ticket numbers** give everyone one place to check progress.

An assistant can turn findings into actions like these. It can't know who has time to do them.

> ‼️ A common mistake is keeping the owners an assistant filled in. The team picks each owner and where the work is tracked.

---
## Practice

Reset emails silently stopped after the mail provider rejected an expired API key. A postmortem action says "Improve monitoring for password resets." What alert would make that checkable?

???

- Alert when no reset emails send for 15 minutes.

---
## Revision

A postmortem action names a test and its owner, but nobody can find its status. What does it still need?

???

- A ticket or other agreed place where it's tracked.
