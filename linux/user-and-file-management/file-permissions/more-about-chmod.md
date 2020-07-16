---
author: nene
type: normal
category: must-know
---

# More about `chmod`


---

## Content

Besides having characters to denote who gets what permissions, `chmod` allows us to use digits as well.

Different digits in `chmod` mean a different set of permissions. The digits we can use and their meaning are shown below:

```plain-text
0: (000) no permission.
1: (001) execute permission.
2: (010) write permission.
3: (011) write and execute permissions.
4: (100) read permission.
5: (101) read and execute permissions.
6: (110) read and write permissions.
7: (111) read, write, and execute permissions.
```

These digits are then combined to denote permissions for the owner, groups, and other.

Some commonly used permissions examples for executable files:

```sh
# all three have no restrictions
chmod 777 filename

# owner has no restrictions
chmod 700 filename
```

For general files:

```sh
# all users can read/write the file
chmod 666 filename

# above is the same as
chmod a+rw filename
```


---

## Practice

Add *read/execute* permissions for *user* and *other* for enki.txt: 

```plain-text
??? ??? ?????? enki.txt
```

- `chmod`
- `uo`
- `+`
- `rx`
- `ug`
- `a`
- `-`
