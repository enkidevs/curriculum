# Python debugger.
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

The **Python debugger** comes as a module called `pdb`, which is part of the **standard Python** distribution. It is extensible as well, being defined as the class `Pdb`.

We will consider a program with two **global variables**, a function that creates a **nested loop** and the `if _name_ == '_main_'` construction that calls the nested loop:

```
#Program name: test.py

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

Running the **debugger** from the command line causes it to load your **source file** and stop the **execution** on the **first statement** it finds:

```
$ python -m pdb test.py

#Output in console:

> /Users/seba/test.py(1)<module>()
-> num_list = [10, 20, 30]
(Pdb)
```

In the **output**:
- the first line contains the current **module name** with a **directory path** and the printed line that follows (`1` in our case).
- the second line shows the current **line** of **source code** that is **executed** (if there are any comments on the first lines of the file, they will be skiped by the debugger).

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

The current line is indicated by the `->` character. This command is provided with two **optional arguments**, they must be two `int` values wich define the range of lines the user wants to list (eg: `list 5, 11`). Without providing arguments, the `list` command provides 11 lines arround the **currnt line**.

The `step` command will **iterate** through the loops showing exactly what the **loop** is doing.
**Note** that in the following example we will consider being at line `11` when we call the first step:

```
> /Users/seba/test.py(11)<module>()
-> if __name__ == '__main__':
(Pdb) step
> /Users/seba/test.py(12)<module>()
-> nested_loop()
(Pdb) step
--Call--
> /Users/seba/test.py(5)nested_loop()
-> def nested_loop():
(Pdb) step
> /Users/seba/test.py(6)nested_loop()
-> for nr in num_list:
(Pdb) step
> /Users/seba/test.py(7)nested_loop()
-> print(nr)
(Pdb) step
10
> /Users/seba/test.py(8)nested_loop()
-> for char in chars_list:
(Pdb) step
> /Users/seba/test.py(9)nested_loop()
-> print(char)
(Pdb) step
a
```
The `next` command, instead, will execute the entire function without showing the step-by-step process.
**Note** that in the following example we will consider being at line `11` when we call the first step:

```
> /Users/seba/test.py(11)<module>()
-> if __name__ == '__main__':
(Pdb) next
> /Users/seba/test.py(12)<module>()
-> nested_loop()
(Pdb) next
1
a
b
c
2
a
b
c
3
a
b
c
--Return--
> /Users/seba/test.py(12)<module>()->None
-> nested_loop()
(Pdb)  
```

Finally, whenever you want to leave `pdb` console, type the command `quit` or `exit`.

---
## Practice

Which command shows exactly what loops are doing on each iteration?
???

* `step`
* `next`
* `go`

---
## Revision

Which command executes a function without showing step-by-step process?
???

* `next`
* `step`
* `go`
