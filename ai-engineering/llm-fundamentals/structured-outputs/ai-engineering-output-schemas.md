---
author: enki-ai

type: normal

category: must-know

links:
  - '[JSON Schema](https://json-schema.org){documentation}'

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Base them on what the code that reads the output needs.
    requiredConcepts:
      - The needs of the downstream code that reads the output.
    acceptedAnswers:
      - From what the downstream code reads.
      - Whatever fields the consuming code actually uses.
      - From what the page or service using the output needs.
    hints:
      - Who reads the model's output after it comes back?
      - What happens to a field nothing reads?
    tooVagueExamples:
      - From the requirements.
      - From best practices.
      - The db or code.
    incorrectExamples:
      - From whatever the model tends to return.
      - From every field the model could possibly fill in.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Yes, because without additionalProperties set to false, the schema allows extra fields.
    requiredConcepts:
      - Yes, it passes, because nothing in the schema rules out extra fields.
    acceptedAnswers:
      - Yes. Extra fields are allowed unless you turn them off.
      - It passes, since the schema doesn't forbid other fields.
      - Yes, the warranty field gets through.
    hints:
      - Which schema line rules out fields you didn't list?
      - Is that line in this schema?
    tooVagueExamples:
      - Maybe.
      - It depends on the model.
    incorrectExamples:
      - No, the schema only allows the listed fields.
      - No, the model can't add fields that aren't in the schema.

---

# Output Schemas

---
## Content

When your code needs to read a model's reply, you ask for structured output: JSON in a fixed format. **A schema describes that format: the fields, the type of each, and which ones are required.**

Here's a JSON Schema[1] for product listings in an online store:

```plain-text
{
  "type": "object",
  "properties": {
    "title": {"type": "string", "maxLength": 60},
    "bullets": {"type": "array", "items": {"type": "string"}},
    "category": {"enum": ["kitchen", "bath", "garden"]}
  },
  "required": ["title", "bullets", "category"],
  "additionalProperties": false
}
```

Each rule comes from what the listing page does with that field:

- **title:** the page cuts titles at 60 characters
- **bullets:** the page loops over them to build a list
- **category:** the page uses it to pick one of three menu sections

The last line, `additionalProperties: false`, rejects any field the schema doesn't list. Without it, this reply passes too:

```plain-text
{"title": "Bamboo Board", "bullets": ["Hand wash"],
 "category": "kitchen", "price": 24}
```

The model made up that `price`, and code that reads the saved listing later could treat it as real.

> 💡 Build the schema from what the code reading the reply needs, and set `additionalProperties` to false.

---
## Practice

When you design an output schema, how do you decide which fields it should have?

???

- Include what the code that reads the output needs.

---
## Revision

Your listing schema leaves out `additionalProperties: false`, and a reply adds a `warranty` field. Does the reply pass?

???

- Yes. Nothing in the schema rules out extra fields.

---
## Footnotes

[1:JSON Schema]
A standard format for describing the shape of JSON data: its fields, their types, and which ones are required.
