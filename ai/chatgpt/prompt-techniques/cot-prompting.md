---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# COT Prompting

---

## Content

---

**COT** or **Chain-of-thought** prompting is a technique where the AI model generates a sequence of coherent responses to achieve a specific goal or complete a task. 

This method encourages the model to maintain context throughout a series of prompts, simulating a more natural thought process. 

Let's look at an example where we ask it to plan a small event, then continue instructing it further.

Initial prompt:
![plan-a-small-event](https://img.enkipro.com/f8f406b06861ddb2ab62d0971dc1a258.png)

Instruction 1:
![instruction-1](https://img.enkipro.com/cfd7d8af6464013ecc4b0b98b0e99f54.png)

Instruction 2:
![instruction-2](https://img.enkipro.com/727ccaf5a8e3a3775f649fecba9bfa1c.png)

Instruction 3:
![instruction-3](https://img.enkipro.com/a2a245d37a35a41c39a9fb806c9da86f.png)

Summarize our plan:
![summarized-plan](https://img.enkipro.com/b24b9bda7bcec348fbdc4e2a383b6845.png)


**COT** prompting is mostly used in these situations:
- Multi-step reasoning is required[1]
- Complex problem-solving[2]
- Conversation simulations[3]
- Creative tasks[4]


---
## Footnotes

[1: Multi-Step Reasoning]
Tasks that involve multiple steps or stages of reasoning to reach a conclusion or solution benefit from COT prompting. The technique allows the AI model to build on previous responses, maintaining context throughout the process.

[2: Complex Problem-solving]
When a problem requires breaking down into smaller, more manageable parts or a step-by-step approach, COT prompting can be helpful. It enables the model to generate responses in a structured manner, addressing each aspect of the problem sequentially.

[3: Conversation simulations]
In conversational AI applications, COT prompting can be useful to maintain context and coherency throughout the conversation. The technique allows the model to keep track of previous responses and generate relevant, context-aware replies.

[4: Creative tasks]
COT prompting can be beneficial for creative tasks like story-writing or brainstorming. The model can progressively generate ideas or story elements, with each prompt building on the previous response, leading to a more coherent and cohesive output.