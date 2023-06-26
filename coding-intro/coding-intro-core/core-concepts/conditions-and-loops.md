---
author: kapnobatai136

type: normal

category: must-know

---
# Conditions and Loops

---
## Content

It's time to introduce the core tools for making logical decisions and repeating commands within programs.

### Conditions

In computers, there's no maybe. Every question is answered with a *yes* or a *no*[1]. Every choice with a *do* or *don't*.

We make these choices using what's known as an if statement.

Imagine that you were writing an app to control a lightbulb. Our code might look this:
```python
if switch_is_on:
    turn_on_light()
```

Here `switch_is_on` is a boolean variable. That means it is either True or False.

If `switch_is_on` is true, then we turn on the light.

Some other examples of conditions we might put in an if statement:
- `age > 10`
- `password = "MySecretPassword123"`


### Loops

With loops, we can run a command as many times as we want, automatically!

Love that song? Put the `play` command inside a loop. Want to do the same calculation 50 times? Put the `calculate` command inside a loop. Any command you put in a loop will keep repeating for as long as you need it to.

> 💡 If you right-click on a YouTube video and click "Loop" you can see the video start over and over again.

Could a loop continue forever? 🙀

