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
7: (111) read, write and execute permissions.
```

These digits are then combined to denote permissions for the owner, groups, and other.

Some commonly used permissions examples for executable files:

```sh
# all three have no restrictions
chmod 777 filename

# owner has no restrictions
chmod 700 filename
```

The three `7`'s and `700` are three separate numbers in decimal.

In the binary format they would look like this:
```sh
777 = 111 111 111
700 = 111 000 000
```

> 💡 `777` means the owner, the groups, and other can read, write and execute permissions. While the `700` means only the owner has all three permissions while the groups and other have none.

For general files:

```sh
# all users can read/write the file
chmod 666 filename

# above is the same as
chmod a+rw filename
```

The `666` means the owner, the groups and others have read and write permissions, and no one has execute permissions.

```sh
666 = 110 110 110
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
