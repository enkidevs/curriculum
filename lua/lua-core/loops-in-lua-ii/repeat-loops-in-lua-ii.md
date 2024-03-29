---
author: nemanjaenki
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Repeat Loop Example

---

## Content

Let's look at a `repeat` loop example. In this example, we will repeatedly ask the user for their input until they guess a value we want:

```lua
-- initialize a variable to keep track of the user's guess
guess = ""

-- keep prompting the user for their guess until they get it right
repeat
  -- prompt the user for their guess
  print("Guess a number between 1 and 10:")

  -- read in the user's guess from standard input
  guess = io.read()

  -- check if the guess is correct
  if guess == "7" then
    print("Congratulations, you guessed correctly!")
  else
    print("Sorry, that guess was incorrect. Please try again.")
  end
until guess == "7"
```

**Note**: We will learn how `io.read()` works in the following workout.

---

## Practice

Finish the loop that asks a user for their guess:

```lua
-- initialize a variable called guess to keep track of the user's input
??? = ""

-- keep prompting the user for their guess until they get it right
???
  -- prompt the user for their guess
  print("Guess a number between 1 and 10:")

  -- read in the user's guess from standard input
  ??? = io.read()

  -- check if the guess is correct
  if ??? == "9" then
    print("Congratulations, you guessed correctly!")
  else
    print("Sorry, that was incorrect. Please try again.")
  end
??? guess == "9"
```

- `guess`
- `repeat`
- `guess`
- `guess`
- `until`
- `end`
- `while`
- `do`

---

## Revision

Given the code:

```lua
guess = ""

repeat
  print("Guess a number between 1 and 10:")

  guess = io.read()

  if guess == "7" then
    print("Congratulations, you guessed correctly!")
  else
    print("Sorry, that guess was incorrect. Please try again.")
  end
until guess == "7"
```

Which of these options is **NOT** true about this code? ???

- Will end when users guess wrong
- Keep prompting the user for their guess until they get it right
- Prompt the user for their guess
- It reads the user's guess
- Check if the user guess is correct