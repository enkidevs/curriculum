---
author: kapnobatai136
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Statuses


---

## Content

Every item in the task history list represents a previous run of a zap. Let's look at a sample:

![task-history-example](https://img.enkipro.com/ca9e7a3a5b9a8888e19319dfb01a6ee2.png)

The column that you will most likely notice first is `Status`, and as you can see there are quite a few different types:

- `Success`
  - zap was ran successfully
- `Filtered`
  - usually means that the zap was stopped due to a constraint
  - a more detailed response is provided in the `Status Reason` column
- `Playing`
  - this means that all the filters were passed and the zap is in the process of being completed
  - for example, an email is being sent
- `Waiting`
  - the zap is ready to be completed, but it is waiting for a delay or scheduled time
  - if you have the `Autoreplay` feature enabled, you might also see this status
- `Holding`
  - the zap is on hold for a certain reason
  - more detail is provided in the `Status Reason` column
- `Stopped`
  - this is usually shown when your zap runs into an error
  - if this happens too many times, the zap will be paused


---

## Practice

Fill in the descriptions:

Stopped   ???
Playing   ???
Holding   ???
Filtered  ???

- Zap ran into an error.
- Zap is in the process of completing.
- Zap is on hold.
- Zap was stopped due to a constraint.
