---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [Python
    debugger](https://www.digitalocean.com/community/tutorials/how-to-use-the-python-debugger){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Python Debugger


---

## Content

The **Python debugger** comes as a module called `pdb`, which is part of the **standard Python** distribution.

We will consider a program with two **global variables**, a function that creates a **nested loop** and the `if __name__ == '__main__'` statement that calls the nested loop:

```python
# Program name: debug.py

number_list = [1, 2]  
chars = ['a', 'b']

def nested_loop():
  for nr in number_list:
    print(nr)
    for char in chars:
      print(char)

if __name__ == '__main__':
  nested_loop()
```

Running the **debugger** from the command line causes it to load your **source file** and stop the execution before the first statement it finds:

```bash
python3 -m pdb debug.py

#Console output:

> /Users/seba/debug.py(1)<module>()
-> number_list = [1, 2]
(Pdb)
```

In the **output**:

- the first line contains the current **module name** with a **directory path** and the index of the line on which the first statement is found (`1` in our case).
- the second line shows the actual **statement** before which the **debugger** stopped.

As the **debugger** is an interactive tool, it provides three commands for navigating the **source code**:

- `list`
- `step`
- `next`

We will take a look at how these work in the following insight.


---

## Practice

What is the error this snippet will throw?

```py
name = input('What\'s your name?\n')
def interaction()
  print(name)
  my_name = 'Seba'
  if name is my_name:
    print("We have the same name!")
```

???

- SyntaxError: invalid syntax
- ZeroDivisionError: division by 0
- The code will run with no errors
- EOFError
 
