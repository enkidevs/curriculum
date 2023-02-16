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
links:
  - '[Big-O Cheat Sheet](https://www.bigocheatsheet.com/){website}'
  - '[Do you use Big-O complexity evaluation in the "real world"?](https://stackoverflow.com/questions/1248509/do-you-use-big-o-complexity-evaluation-in-the-real-world){discussion}'
  - '[Big O: How Code Slows as Data Grows](https://www.youtube.com/watch?v=Ee0HzlnIYWQ){video}'

---

# repeat Loop Example

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

---
## Practice

Is O(logN) more or less efficient than O(N²)?

???

- more
- less

---
## Revision

Is O(logN) more or less efficient than O(N)?

???

- more
- less