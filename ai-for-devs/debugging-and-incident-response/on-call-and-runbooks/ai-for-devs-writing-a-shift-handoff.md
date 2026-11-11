---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A handoff names a next safe check that tells the open causes apart.
    requiredConcepts:
      - A check that separates the two causes, such as traffic volume or pool wait time.
    acceptedAnswers:
      - Look at requests per minute over that window.
      - Check whether requests were waiting on the connection pool.
      - Compare traffic with the same time yesterday.
      - Check if traffic actually spiked.
    hints:
      - What would differ between the two causes?
      - Which metric could you just read?
    tooVagueExamples:
      - Keep investigating.
      - Monitor latency.
    incorrectExamples:
      - Scale up the API servers and watch latency.
      - Mark the config change as the cause.
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Shift Handoffs

---
## Content

Say your shift ends while the incident is still open. The next responder needs to know what's confirmed, what you did, and what's still open. An assistant can organize your notes into a handoff like this:

```plain-text
INCIDENT 2481 handoff, 11:45

Facts:
  09:42 deploy added a 512px thumbnail
  09:47 queue age crossed 8 minutes
  09:49 worker CPU 92%
  09:53 image-processing timeouts increased
  enqueued jobs 308/min at 09:40, 951/min at 09:53

Action: worker pool 20 -> 35 at 10:01
Observed after: queue age began falling at 10:06

Hypotheses: the thumbnail created more jobs per upload, upload volume
  rose, or both. None confirmed.

Open: uploads_received_per_min during the same window
Next safe check: read that metric on the existing dashboard
```

- **Facts:** readings with times, so nobody has to recheck them.
- **Action:** what you changed and what happened after.
- **Hypotheses:** the possible causes, kept apart from the facts so timing isn't read as cause.
- **Next safe check:** one metric that tells the hypotheses apart. If uploads stayed flat while jobs tripled, the thumbnail is creating the extra jobs.

**Keep facts, actions, hypotheses, and open work in separate sections.** Then the next responder can carry on without repeating your checks.

> 💡 Before you send it, compare every line with your source timeline. While tidying, an assistant can turn "followed the deploy" into "caused by the deploy."

---
## Practice

Latency rose. The cause is either a config change that shrank the connection pool or a traffic spike. What check should your handoff suggest to tell them apart?

???

- Compare request volume in that window with normal traffic.

---
## Revision

A handoff says, "The deploy caused the backlog," but evidence shows only that it followed. That line belongs under ???.

- unconfirmed hypotheses
- facts
- actions
- next safe check
