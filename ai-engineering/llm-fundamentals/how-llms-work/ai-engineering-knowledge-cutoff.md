---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Your app has to supply the current policy, by retrieving it into the prompt or fetching it with a tool.
    requiredConcepts:
      - Retrieve the current policy into the prompt (RAG), or fetch it with a tool call.
    acceptedAnswers:
      - Your app looks up the current policy and adds it to the prompt.
      - Use RAG to pull this month's policy document in.
      - Give the model a tool that fetches the latest policy.
    hints:
      - When was the model trained?
      - Where does the current policy live?
    tooVagueExamples:
      - Give it more data.
      - Update it.
    incorrectExamples:
      - Use a newer model.
      - Tell it in the system prompt to stay current.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The model answers from training data that ends at its knowledge cutoff, before the launch happened.
    requiredConcepts:
      - Its training data ends before the launch, or its knowledge cutoff predates it.
    acceptedAnswers:
      - Its knowledge cutoff is before the launch.
      - It's answering from older training data.
      - Its training data doesn't include last month.
    hints:
      - When does the model's training data end?
      - Where would news of the launch come from?
    tooVagueExamples:
      - The model is wrong.
      - AI makes mistakes.
    incorrectExamples:
      - It's serving a cached answer from last month.
      - The temperature is set too high.

---

# Knowledge Cutoff

---
## Content

A model's knowledge cutoff is the date its training data ends. **It knows nothing that changed after that date, and it never saw your company's private data.**

Say your docs bot sends the model only the customer's question:

**🚫 Question only**

```plain-text
Does Pro include single sign-on?
```

The model answers from old training data:

```plain-text
Yes, Pro includes single sign-on.
```

If single sign-on moved to the Enterprise plan last quarter, that answer is wrong.

Now your app adds the current plan details above the question:

**✅ Details added**

```plain-text
Plan details: Single sign-on is Enterprise only.
Question: Does Pro include single sign-on?
```

This time the model answers from those details:

```plain-text
No. Single sign-on is Enterprise only.
```

Apps usually supply details like these in one of two ways:

- **RAG** (retrieval-augmented generation): your app searches your documents and adds the relevant parts.
- **Tool calling:** the model asks your code to fetch the data it needs.

---
## Practice

Your bot answers questions about a return policy that changes monthly. How does the model get the current policy?

???

- Your app retrieves the current policy and adds it to the prompt.

---
## Revision

With no docs in the prompt, your bot says a feature launched last month is still in beta. Why?

???

- The model's training data ends before the launch.
