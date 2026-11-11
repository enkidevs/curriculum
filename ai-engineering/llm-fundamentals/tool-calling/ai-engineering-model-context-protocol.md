---
author: enki-ai

type: normal

category: discussion

links:
  - '[Model Context Protocol](https://modelcontextprotocol.io/docs/2026-07-28/getting-started/intro){documentation}'

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Plain tool definitions in the app, since MCP pays off when several apps share the tools.
    requiredConcepts:
      - Plain tool definitions, or no MCP server because no other app needs the tools.
    acceptedAnswers:
      - Plain tool definitions, since only one app uses them.
      - Define the tools in the app. MCP adds nothing here.
      - No MCP server. Nothing else needs these functions.
    hints:
      - How many apps need these functions?
      - What does an MCP server let you share?
    tooVagueExamples:
      - Whichever is easier.
      - It depends on the app.
    incorrectExamples:
      - An MCP server, since it's the standard way to add tools.
      - An MCP server, because it checks the arguments for you.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Your MCP server's own code checks it, since MCP standardizes how calls are made and leaves the checks to you.
    requiredConcepts:
      - Your own server code checks it.
    acceptedAnswers:
      - Your server code validates it.
      - The MCP server's own validation logic.
      - My code in the server, before the refund runs.
    hints:
      - What does MCP standardize?
      - Who wrote the code behind `refund_order`?
    tooVagueExamples:
      - Some validation.
      - The system.
    incorrectExamples:
      - The MCP protocol validates it automatically.
      - The model, since it read the tool description.

---

# Model Context Protocol

---
## Content

Say three of your apps need to search tickets in your ticket tracker. Without a standard, each app needs its own code to connect to it.

**The Model Context Protocol (MCP)[1] is an open standard for this. You wrap the ticket tracker once as an MCP server, and any app that supports MCP can connect to it.**

Here's what that server could offer:

```plain-text
tools: search_tickets(query), add_comment(ticket_id, text)
resources: ticket://{id}, the full text of one ticket
prompts: summarize_ticket, a ready-made prompt template
```

- **Tools:** functions the model can call
- **Resources:** data the app can add to a prompt
- **Prompts:** templates a person can pick

An app asks the server for its tools, gives them to the model, and passes each call the model makes back to the server to run.

That pays off when several apps share one system. For one app calling its own functions, plain tool definitions are simpler.

> ‼️ MCP standardizes how apps list and call tools. Your server's own code still has to check who may call each tool and whether the arguments are valid.

---
## Practice

Only your app needs its three internal functions. Do you build an MCP server or plain tool definitions?

???

- Plain tool definitions, since no other app needs them.

---
## Revision

Through your MCP server, a model calls `refund_order` with an amount of $5,000. What checks that amount is allowed?

???

- Your server's own code, which validates each call's arguments.

---
## Footnotes

[1:Model Context Protocol]
An open protocol for connecting AI applications to tools, data, and prompt templates through MCP servers.
