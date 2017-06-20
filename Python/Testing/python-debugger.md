# Python debugger
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[more info about python debugger](https://www.digitalocean.com/community/tutorials/how-to-use-the-python-debugger)'

---
## Content

The **Python debugger**[1] comes as a module called `pdb`, which is part of the **standard Python** distribution.

We will consider a program with two **global variables**, a function that creates a **nested loop** and the `if _name_ == '_main_'` statement that calls the nested loop:

```
#Program name: debug.py

number_list = [10,20,30]
chars_list = ['a', 'b', 'c']

def nested_loop():
    for nr in number_list
        print(nr)
        for(char in chars)
            print(char)

if _name_ == '_main_':
    nested_loop()
```

Running the **debugger** from the command line causes it to load your **source file** and stop the execution before the first statement it finds:

```
$ python3 -m pdb debug.py

#Console output:

> /Users/seba/debug.py(1)<module>()
-> num_list = [10, 20, 30]
(Pdb)
```

In the **output**:
- the first line contains the current **module name** with a **directory path** and the index of the line on which the first statement is found (`1` in our case).
- the second line shows the actual **statement** before which the **debugger** stopped.

As the **debugger** is an interactive tool, it provides three commands for navigating the **source code**:
- `list`
- `step`
- `next`

Considering the **source code** exemplified above, lets see how `list()` command works:

```
(Pdb) list
1  -> num_list = [10, 20, 30]
2     chars = ['a', 'b', 'c']
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

```
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

```
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

Finally, whenever you want to leave `pdb` console, type the command `quit` or `exit`.

---
## Footnotes

[1:Python debugger]
It's extensible, being defined as the class `Pdb`.

---
## Practice

What character points out the current position in the file?
???

* `->`
* `#`
* `*`

---
## Revision

When debugging a python file with `pdb`, which command will show the step-by-step process?
???

* `next`
* `step`
* `go`
