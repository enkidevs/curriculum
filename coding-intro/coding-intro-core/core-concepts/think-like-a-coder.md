---
author: abdullah

tags:
  - discussion

type: normal

category: discussion

---

# Think Like a Coder

---
## Content

Coding is all about saving time (and sometimes about making money 😉).

Let's look at a scenario.

Imagine you have to simulate grabbing five coins from three different jars. 

You could make a function, `pick_coins`, with three commands and use it five times, saving yourself a lot of time.

```python
def pick_coins():
  # Grab the first coin
  # Grab the second coin
  # Grab the third coin

pick_coins()
pick_coins()
pick_coins()
pick_coins()
pick_coins()
```

Now imagine, you need to grab 100 coins from 80 jars. 

You could put `pick_coins` inside a loop; however, you still need to write 100 lines of code to grab each coin.

Maybe you could put a loop inside `pick_coins` to repeat the grab coin command 100 times; in that case, you'll still need to call the function `pick_coins` 80 times.

There has to be a better way! What else can we do?

Can we put a loop inside another loop? A [loop-de-loop](https://www.youtube.com/watch?v=Yhnx1q1_Bko&ab_channel=TheFabulousEchoes-Topic)? Could that solve our problem? 
