---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Check what the connection can reach and do, and whether you have the authority to connect that material.
    requiredConcepts:
      - "Names a real check: what data or actions it can reach, whether you're allowed to connect the client's material, or where the data goes."
    acceptedAnswers:
      - What files it can see and whether it can change them.
      - Whether I'm allowed to connect a client's drive to another service.
      - What it can access, and where that information goes.
    hints:
      - Does it need only reading access, or can it also change data?
      - Who owns the material in the shared drive?
    tooVagueExamples:
      - Check whether it is safe.
      - Ask your colleague.
    incorrectExamples:
      - Nothing; you already have access to the drive.
      - Only whether the assistant supports the file format.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Grant only the access needed, or stop.
    requiredConcepts:
      - Choose read-only or decline.
    acceptedAnswers:
      - Find a read-only option or stop.
      - Decline unless read-only is possible.
      - Stop and check with the data owner before approving.
    hints:
      - What access does a summary need?
      - What could write access do?
    tooVagueExamples:
      - Be careful.
      - Check it.
    incorrectExamples:
      - Approve; writing will go unused.
      - Connect, then trim permissions later.

---

# What You're Granting

---
## Content

A connection can let an assistant see your information, change it, or both.

The scope varies. One connection may read selected files. Another may search a whole account, create calendar events, or update records.

Before approving it, check:

- **Data:** which accounts, folders, or records can it reach?
- **Actions:** can it only read, or can it create and change things?
- **Permission:** are you allowed to connect material belonging to clients or coworkers?
- **Where it goes:** where does the information it reads end up?

**The safest connection has the least access the task needs.** If the permission screen asks for more than you expected, stop and check with whoever owns the data.

> ‼️ Being able to open a file doesn't mean you're allowed to connect it to another service.

---
## Practice

An assistant asks to connect to a client's shared drive. What should you check before you approve it?

???

- What it can reach and do, and whether you're allowed to connect it.

---
## Revision

A connection asks for read and write access, but you only need a summary. What should you do?

???

- Look for read-only access, or don't approve it.
