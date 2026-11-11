---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Workspace access depends on the user's permissions, enabled connections, account settings, and the particular Gemini surface.
    requiredConcepts:
      - Sharing an employer does not give two accounts identical access.
      - Permissions or enabled Workspace connections can differ.
    acceptedAnswers:
      - One colleague may have permission to the file while the other does not, or their administrator may have enabled different access.
      - Gemini can only use sources the account is allowed and configured to reach, so two colleagues may get different results.
      - Their file permissions, Workspace edition, settings, or enabled connections may differ.
    hints:
      - Can both accounts open the same file without Gemini?
      - Who controls connected apps on a work account?
    tooVagueExamples:
      - Gemini is inconsistent.
      - Their computers are different.
    incorrectExamples:
      - Gemini can read every company file once one employee enables it.
      - Anyone at the same company automatically has identical Workspace access.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Connected Does Not Mean Everything

---
## Content

Workspace access has limits.

**What Gemini can use depends on the account's permissions, Workspace edition, what your admin allows, settings, and the feature being used.**[1]

It does not gain access to a colleague's private file just because both people work for the same company.

In the Gemini app, Workspace services must be turned on. In a new conversation, you may need to name the app and the file.

Some file types and actions still aren't supported, even in a connected app.

> ‼️ A file being in Drive isn't enough. Check the account, its permissions, the connection, and the file you named.

---
## Practice

Two Gemini users work at the same company, but only one can reference a certain Drive file. Why?

???

- Their file permissions, account settings, or enabled Workspace connections may differ.

---
## Revision

Gemini can use a company Drive file only through an account that ???.

- can reach it
- recently opened files
- shares the owner's title
- has a similar name

---
## Footnotes

[1:Connected Workspace Apps]
Google's guide to availability, administrator controls, source selection, and unsupported actions for Workspace connections.
https://support.google.com/gemini/answer/14959807
