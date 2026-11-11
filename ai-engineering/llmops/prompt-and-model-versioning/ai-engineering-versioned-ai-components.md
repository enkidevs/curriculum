---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Each accepted combination of components gets its own immutable version, so the old one stays reproducible for comparison and rollback.
    requiredConcepts:
      - Create a new config version instead of overwriting the old one.
    acceptedAnswers:
      - Cut a new version for the new combination.
      - Make a new release config so you can compare and roll back.
      - Keep the old config as is and save a new numbered one.
      - You add versions.
      - Add a new version.
    hints:
      - Could you reproduce last week's behavior after an in-place edit?
      - What would a rollback restore?
    tooVagueExamples:
      - Track the changes.
      - Be careful with it.
    incorrectExamples:
      - Edit it in place and note it in the changelog.
      - Version only the prompt examples, not the model.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Prompt And Model Versions

---
## Content

An AI feature's output depends on several parts: the model, the prompt, the reply format, the tools, and the search index. If you can't tell which versions produced a reply, you can't rerun it or switch back.

**Prompt and model versioning gives each part a version and records the exact combination as one numbered configuration.**

Here's the configuration of a mobile carrier's support assistant, which answers billing questions from help articles and can look up a customer's bill:

```plain-text
support-assistant config 14
  model:   medium, 2026-03 snapshot
  prompt:  billing-v22
  schema:  reply-v3
  tools:   get_bill v4, add_roaming_pass v1
  index:   help articles, built May 12
```

Three lines need a word of explanation:

- **Model:** a snapshot is a dated model version that the provider keeps unchanged until it retires it.
- **Schema:** the JSON format every reply must follow.
- **Index:** the searchable copy of the help articles.

Every reply is stored with its config number:

```plain-text
reply 88213, config 14
  "Your June bill includes one EU roaming pass."
```

If the customer disputes that answer, `config 14` tells you what produced it, and you can run that exact setup again.

> 💡 Changing any line creates config 15. Config 14 stays untouched, so you can compare with it or switch back.

---
## Practice

A teammate wants to swap in a newer model by editing the release config in place. What do you do instead?

???

- Create a new config version and keep the old one unchanged.

---
## Revision

Each stored reply carries its ???, so you can rerun the exact setup that produced it.

- config number
- prompt version
- model name
- timestamp
