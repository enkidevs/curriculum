---
author: junoocha
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Print Function Review
---

## Content

In the last workout, we printed our first line of code in Roblox Studio using the print function. Note that **all studio print functions will behave the same as Lua print functions** and can be seen in the `output terminal`. Here's a quick review on what can be printed using Lua.

```lua
print("Minecraft but Round")  -- Studio can print strings using quotation marks
--Output: Minecraft but Round

print(1) -- Studio can print integers 
--Output: 1

print(1 + 1) -- Studio can print calculations
--Output: 2

print(true)  --Studio can also print boolean values
--Output: true
print(false) 
--Output: false

print("This player has eaten this many pies: "..20) --Finally, you can continue strings in Studio using 2 periods.
--Output: This player has eaten this many pies: 20

```
One important thing to take note of is that Roblox Studio will actually tell you the the **script name** holding the print function, as well as the **line number** of the print statement. For instance, with a script called "Testing" with two print functions on lines 1 and 4:

![propteries-interface](https://img.enkipro.com/69a611c54f25a6cc58c090b0036d2fde.png)

This can be very useful when debugging[1] your code later on.

---

## Practice

Let's say that you run the script and in the output, you see the following line:
```lua
-- Hello World! - Server - WelcomeScript:5
```
What is the name of the script and the line number of the "Hello World!" output?

- WelcomeScript, line 5
- WelcomeScript, line 1
- Script, line 5
- "WelcomeScript", line 1

---

## Revision

Let's say you run the script and in the output, you see the following lines:
```lua
-- Test 1: Passed - Server - TestingScript:10
-- Test 2: Passed - Server - TestingScript:20
-- Test 3: Passed - Server - TestingScript:25
-- Test 4: Failed - Server - TestingScript:29 
```
Which line do you think should be looked at first?

- line 29
- line 20
- line 10
- line 25

---

## Footnotes

[1: Debugging]

Debugging is the practice of finding and fixing errors in code, which can be as simple as using print statements.
