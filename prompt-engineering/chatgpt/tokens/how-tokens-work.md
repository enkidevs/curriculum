---
author: Stefan-Stojanovic
type: normal
category: discussion
 

---

# How AI Processes Text

---

## Content

---

Let's see how tokenazation works.

Given the user input:
```plain-text
What is the sum of the first 10 primes?
```

The Ai would split it into tokens:
```plain-text
"What", "is", "the", "sum", "of", "the", "first", "10", "primes", "?"
```

The ai analyzes the sequence of tokens and uses its training data to predict the next token. For this input, it predicts that the next likely token is a mathematical number or calculation due to the `sum` and `first` `10` `primes` tokens.

Before making a reponse, it incorporates the tokens and uses its knowledge of language and statistics to generate a fluent, releveant, grammatically correct and accurate response to the input text.

Then it generates a response:
![first-10-primes-response](https://img.enkipro.com/b893300cd88689a8dc6c5b00aa4e67d6.png)

Its important to note that although it tries to, it doesnt guarantee that it will be 100% accurate every time.
