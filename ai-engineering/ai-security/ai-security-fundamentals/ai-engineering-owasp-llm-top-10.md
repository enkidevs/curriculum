---
author: enki-ai

type: normal

category: must-know

links:
  - '[OWASP Top 10 for LLM Applications](https://genai.owasp.org/llm-top-10/){website}'

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: It gives a shared list of the most critical risks in LLM applications, so the review can check the chatbot against each one.
    requiredConcepts:
      - It's a list or checklist of the main risks to check the chatbot against.
    acceptedAnswers:
      - As a checklist of the main risks to review it against.
      - It names ten common risks, so we check the chatbot for each.
      - We walk through each risk on the list and see which ones apply.
    hints:
      - What does the list contain?
      - How would a review use a list of risks?
    tooVagueExamples:
      - It helps with security.
      - It's an industry standard.
    incorrectExamples:
      - It certifies the chatbot as secure once it passes.
      - It ranks AI providers by how safe their models are.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# OWASP Top 10 For LLM Applications

---
## Content

Security teams need a shared list of what can go wrong in an app built on a large language model (LLM). The best-known one is the OWASP Top 10 for LLM Applications[1].

**It lists the ten most serious security risks in LLM apps, so a team can check its feature against each one before launch.**

Here are the ten in the 2026 edition:

- **Prompt Injection:** text that makes the model follow an attacker's instructions.
- **Excessive Agency:** a model with more tools or permissions than it needs.
- **Sensitive Information Disclosure:** personal or confidential data leaking through answers or logs.
- **Hidden Context Exposure:** the model revealing its system prompt or tools.
- **Improper Output Handling:** model text pasted unescaped into HTML or SQL.
- **Vector and Embedding Weaknesses:** search returning documents the person asking may not open.
- **Supply Chain:** a model or library that is tampered with or changes silently.
- **Data and Model Poisoning:** false content planted where the model learns or searches.
- **Unbounded Consumption:** usage with no cap running up cost, like a looping agent.
- **Misinformation:** a model stating false things confidently.

> 💡 Before launch, go down the list and ask where each risk could show up in your feature. In a support chat that issues refunds, Prompt Injection and Excessive Agency come first, since one message could trigger a refund nobody approved.

---
## Practice

You're planning a security review of a new AI chatbot. How can the OWASP Top 10 for LLM Applications help?

???

- As a checklist of the main AI risks to review it against.

---
## Revision

An agent loops all night and runs up a $4,000 model bill. That's the OWASP risk called ???.

- Unbounded Consumption
- Excessive Agency
- Supply Chain
- Data and Model Poisoning

---
## Footnotes

[1:OWASP Top 10 for LLM Applications]
A list of the most critical security risks in apps built on large language models, published by OWASP (the Open Worldwide Application Security Project), a nonprofit security community.
