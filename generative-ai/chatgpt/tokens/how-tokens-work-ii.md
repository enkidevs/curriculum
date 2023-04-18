---
author: Stefan-Stojanovic
type: normal
category: discussion
 

---

# How AI Processes Text Continued

---

## Content

---

The way the AI determines the next word/token is through statistical methods. It checks all similar examples to the input data to find patterns.

For instance, if you type:
```plain-text
Finish the sentence:

Blue is my favorite color
```

It will split it into tokens, then it will check its previously trained data to determine/predict which token/s go the most with the provided input.

In the above case, it can reply with something like:
```plain-text
# 1
Blue is my favorie color "too"

# 2
Blue is my favorite color "because it reminds me of the ocean"
```

Some statistical methods AI use are Markov chains[1] or deep learning algorithms[2]. The above example uses the Markov chain method.

However, no matter which one it uses, it will always try to predict what you are going to say/ask based on the conversations it had previously.


## Footnotes
---

[1: Markov Chain]
A Markov chain is a mathematical model that uses probability theory to predict the likelihood of a certain event happening based on the current state. 

In the context of language processing, a Markov chain can be used to predict the likelihood of a certain word appearing based on the words that have come before it.

For example, if the model has seen the sequence "I love", it might predict that the next word is "pizza" with a high probability based on how often the words "I love pizza" appear together in its training data.


[2: Deep Learning]
Deep learning algorithms use neural networks to analyze patterns in data and make predictions based on those patterns. 

In the context of language processing, a deep learning model might use a recurrent neural network (RNN) to analyze a sequence of words and predict the next word in the sequence. The RNN works by processing each word in the sequence one at a time, using its previous predictions as input for the next word. 

Over time, the RNN learns to recognize patterns in the sequence and make increasingly accurate predictions for the next word.