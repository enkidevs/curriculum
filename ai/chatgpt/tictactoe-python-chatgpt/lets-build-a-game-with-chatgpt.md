---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Building A Game With ChatGPT

---

## Content

---

In this workout we will ask **ChatGPT** to build a tic tac toe game in Python for us.

Altough we could ask **ChatGPT** to provide the whole game for us in a single promt, the larger the response the higher the probibility of a mistake. Also, asking it to flat out solve a whole task for us, doesn't help us learn.

So, keeping that in mind, let's first ask it to create a board for us:

```plain-text
Can you create a tic tac toe board in Python?
```

### Response:

Sure! Here's an example of how you can create a Tic Tac Toe board in Python using a 2D list:

```python
board = [['-', '-', '-'],
         ['-', '-', '-'],
         ['-', '-', '-']]
```

This creates a 3x3 board, where each cell is initialized with a "-" character. You can print this board to the console using nested loops like this:

```python
def print_board(board):
    for row in board:
        print(' | '.join(row))
        print('---------')

print_board(board)
```
This will output the following board to the console:
```plain-text
- | - | -
---------
- | - | -
---------
- | - | -
---------
```

You can modify the contents of the board as the game progresses by updating the elements of the list. For example, to place an 'X' in the top-left corner of the board, you would do:

```python
board[0][0] = 'X'
```

And the board would look like:
```plain-text
X | - | -
---------
- | - | -
---------
- | - | -
---------
```

Let's move on in the next insight.