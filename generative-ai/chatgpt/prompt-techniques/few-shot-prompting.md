---
author: Stefan-Stojanovic
type: normal
category: discussion
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
 

---

# Few-Shot Prompting

---

## Content

---

**Few-shot** prompting is a technique in which a language model is fine-tuned on a small amount of data (usually with limited labeled examples) in order to generate a specific output. 

In machine learning it falls under the category of transfer learning.

So, the model is pre-trained on a large dataset, then fine-tuned on a smaller dataset with a limited number of examples to perform a new task.

Let's look at some examples:

![few-shot-abbreviation](https://img.enkipro.com/d97db4d87ecd2e0ee39a338a3b1f0c50.png)

Now the model should know what to respond with when we provide other abbreviations without having to repeat what it should do:

![few-shot-abbreviations-continued](https://img.enkipro.com/105e6c55b99be01339b35612b7611d39.png)

The key benefit of **few-shot** prompting is that it allows for quickly training a model to perform a new task with only a few examples, making it useful in scenarios where there is limited data available.

The fine-tuning process can be done using various algorithms, such as gradient descent[1] or meta-learning[2], which helps to improve the performance of the model on the new task.

This technique can be used in various applications, such as natural language processing tasks like sentiment analysis, text classification, and question answering.

Here are examples on sentiment analysis and text classification:

![sentiment-analysis-and-text-classification](https://img.enkipro.com/2ddb08d1bf5a0b14b886ec20fa245a63.png)


---
## Practice

Few-shot prompting fine-tunes a model on ??? data to generate output.

- small
- large

---
## Footnotes

[1: Gradient descent]
A first-order optimization algorithm commonly used for updating the weights of a machine learning model. It aims to minimize the cost function by iteratively adjusting the parameters in the direction of the negative gradient of the function.

[2: Meta-learning]
A machine learning technique where a model learns to learn, by using experience gained from solving a variety of tasks to improve its ability to learn new tasks quickly and efficiently.