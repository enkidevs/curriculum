---
author: nene
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# More about `chmod`


---

## Content

Besides using characters to denote who gets what permissions, `chmod` allows us to use digits too.

Each permission is a three digit number, representing the owner, groups, and other users, respectively. 

Each digit within the permission is an integer between `0` and `7`, whose meaning is represented by a three digit binary number, as per the table below:

```plain-text
0: (000) no permission.
1: (001) execute permission.
2: (010) write permission.
3: (011) write and execute permissions.
4: (100) read permission.
5: (101) read and execute permissions.
6: (110) read and write permissions.
7: (111) read, write and execute permissions.
```

> 💡 This concept is commonly known as the *three permission triad*. The first triad is what the owner can do, the second triad is what the group can do, and the third triad is what other users can do.

Le's look at an example to demonstrate. 

Here's how to set the permission `700` for a file called `enki.code`:

```sh
chmod 700 enki.code
```

To understand the permissions number `700`, let's first view it in binary:

```sh
700 = 111 000 000
```

Now we can reference the table above and see that `111 000 000` means that the owner has read, write and execute permissions while the groups and other users have none.

Here're a few more examples of commonly used permissions:

```plain-text
700	read, write, & execute only for owner
770	read, write, & execute for owner and group
777	read, write, & execute for owner, group and others
111	execute by anyone
444	read by anyone
666	read & write by anyone
740	owner can read, write, & execute; group can only read; others have no permission
```


---

## Practice

Add *read/execute* permissions for *group* and *other* for `enki.txt`: 

```plain-text
??? ??? enki.txt
```

- `chmod`
- `055`
- `550`
- `505`
- `005`
- `755`
- `changemod`
- `chperm`


---

## Revision

Use `chmod` to make the file `enki.txt` readable by anyone, but only writable and executable by the owner.

```plain-text
chmod ??? enki.txt
```

- `744`
- `557`
- `755`
- `754`
- `733`
