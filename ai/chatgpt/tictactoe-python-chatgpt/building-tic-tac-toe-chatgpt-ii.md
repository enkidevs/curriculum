---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Building Tic Tac Toe

---

## Content

---

Now that we have a board[1], let's see what else we need to finish the game.
```plain-text
Now that I have the board, what else do I need to finish the game?
```

### Response
To finish the game of Tic Tac Toe, you need to implement the game logic to handle the players' moves and determine the winner.

Here are some steps to get you started:

1. Ask the players for their names and assign 'X' to one player and 'O' to the other player.

2. Print the initial board to the console.

3. Implement a loop that takes turns from the players until the game is over. In each turn:
- Ask the player for their move (the row and column of the cell they want to place their mark in).
- Check if the move is valid (i.e., the cell is not already occupied).
- If the move is valid, update the board with the player's mark.
- Print the updated board to the console.
- Check if the game is over (i.e., either a player has won or the board is full).
- If the game is over, print the winner (if any) or a message indicating a tie.
To determine the winner, you need to check if any player has three marks in a row (horizontally, vertically, or diagonally). You can do this by checking all possible combinations of three cells on the board and comparing their values.

I hope this helps! Let me know if you have any further questions.

Let's finish the first list item:
```plain-text
Give me the code to Ask the players for their names and assign 'X' to one player and 'O' to the other player.
```

### Response

Sure, here's an example code to ask the players for their names and assign `X` to one player and `O` to the other player:

```python
player1 = input("Enter name for Player 1 (will use 'X'): ")
player2 = input("Enter name for Player 2 (will use 'O'): ")

print(f"Welcome {player1} and {player2}! Let's start the game.")

players = {player1: 'X', player2: 'O'}
```


---
## Footnotes

[1:board]
```python
board = [['-', '-', '-'],
         ['-', '-', '-'],
         ['-', '-', '-']]

def print_board(board):
  for row in board:
    print(' | '.join(row))
    print('---------')

print_board(board)
```
