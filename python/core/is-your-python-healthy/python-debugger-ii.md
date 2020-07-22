---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [Python
    debugger](https://www.digitalocean.com/community/tutorials/how-to-use-the-python-debugger){website}
---

# Python Debugger Methods


---

## Content

Considering the **source code** exemplified in the previous insight[1], lets see how `list()` works:

```python
(Pdb) list
1  -> num_list = [1, 2]
2     chars = ['a', 'b']
3     
4     
5     def nested_loop():
6         for nr in num_list:
7             print(nr)
8             for char in chars:
9                 print(char)
10     
11     if __name__ == '__main__':
(Pdb)
```

The current line is indicated by the `->` character. This command is provided with two **optional arguments**, they must be two `int` values which define the range of lines the user wants to list (eg: `list 5, 11`). Without providing any arguments, the `list` command prints 11 lines above and below the current line.

The `step` command will **iterate** through the loops showing exactly what the **loop** is doing. The difference between `step` and `next` is that `step` will stop within a called function, while `next` executes called functions to only stop at the next line of the current function.

```shell
(Pdb) step
> /Users/seba/debug.py(5)<module>()
-> def nested_loop():
> /Users/seba/debug.py(11)<module>()
-> if __name__ == '__main__':
(Pdb) step
> /Users/seba/debug.py(12)<module>()
-> nested_loop()
(Pdb) step
--Call--
> /Users/seba/debug.py(5)nested_loop()
-> def nested_loop():
(Pdb) step
> /Users/seba/debug.py(6)nested_loop()
-> for nr in num_list:
```

On the other hand, `next` command executes the next **statement**, without showing everything that happened to evaluate the call.

```shell
(Pdb) next
> /Users/seba/debug.py(5)<module>()
-> def nested_loop():
> /Users/seba/debug.py(11)<module>()
-> if __name__ == '__main__':
(Pdb) next
> /Users/seba/debug.py(12)<module>()
-> nested_loop()
(Pdb) next
1
a
b
2
a
b
--Return--
> /Users/seba/debug.py(12)<module>()->None
-> nested_loop()
(Pdb)  
```

Finally, whenever you want to leave `pdb` console, type `quit` or `exit`.


---

## Practice

The `???` command will **iterate** through the loops showing exactly what the **loop** is doing.
The `???` command executes **statements**, without showing everything that happened to evaluate the call.
The `???` command has **optional arguments** that must be two `int` values that define the range of lines the user wants.

- step
- next
- list()


---

## Revision

When debugging a python file with `pdb`, which command will show the step-by-step process?

???

- `step`
- `next`
- `go`


---

## Footnotes

[1:Source Code]
Previously, we had this code:

```python
# Program name: debug.py

number_list = [1, 2]  
chars = ['a', 'b']

def nested_loop():
  for nr in number_list:
    print(nr)
    for char in chars:
      print(char)

if __name_ == '__main__':
  nested_loop()
```

And we ran the debugger using:

```bash
python3 -m pdb debug.py

#Console output:

> /Users/seba/debug.py(1)<module>()
-> num_list = [1, 2]
(Pdb)
```
