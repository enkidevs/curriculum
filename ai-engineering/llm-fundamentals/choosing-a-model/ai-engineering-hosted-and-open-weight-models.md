---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: An open-weight model you run yourself, because a hosted call sends every prompt to the provider.
    requiredConcepts:
      - An open-weight model on your own servers, because hosted calls send the data to the provider.
    acceptedAnswers:
      - Run an open-weight model ourselves.
      - Self-host, since hosted calls send the contracts to the provider.
      - An open-weight model in our own network.
    hints:
      - Where does a hosted call send the prompt?
      - Which option keeps the contracts inside your network?
    tooVagueExamples:
      - The secure one.
      - Whichever is private.
    incorrectExamples:
      - A hosted API, since providers delete data after a while.
      - A hosted API with a shorter prompt.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Running the model yourself, such as keeping its servers and GPUs up, or retuning prompts for the new model.
    requiredConcepts:
      - Running and maintaining the servers or GPUs, or retuning prompts for the new model.
    acceptedAnswers:
      - Keeping the GPU servers running.
      - Operating and scaling the model's infrastructure.
      - Retuning our prompts and running the servers.
    hints:
      - Who kept the model running before?
      - Who sets up the GPUs now?
    tooVagueExamples:
      - More responsibility.
      - Lots of things.
    incorrectExamples:
      - Paying per-token fees to the provider.
      - Tracking the provider's model retirements.

---

# Hosted And Open-Weight Models

---
## Content

You can use a model in two ways:

- **Hosted:** the model runs on a provider's servers, and you call it through their API.
- **Open-weight:** the model's weights, the numbers it learned in training, are published, so you can run it on your own servers.

Here's where a prompt goes in each case:

```plain-text
Hosted:       your app -> provider's server
Open-weight:  your app -> your own server
```

**With a hosted model, every prompt leaves your network.** Many providers promise not to train on API data and to delete it after a set time, which is enough for many teams. A law firm whose contracts must never leave its network has to run an open-weight model itself.

That takes work: your team sets up the GPUs, the chips models run on, and handles the scaling and outages a provider would otherwise handle.

---
## Practice

Your company's contracts must never leave its own network. Hosted API or open-weight model?

???

- An open-weight model you run yourself, inside the network.

---
## Revision

You move from a hosted API to running an open-weight model yourself. What new work does your team take on?

???

- Running and maintaining the servers and GPUs it runs on.
