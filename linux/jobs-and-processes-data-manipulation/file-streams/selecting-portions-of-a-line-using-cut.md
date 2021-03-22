---
author: jfarmer
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

# Selecting Portions of A Line Using `cut`


---

## Content

The `cut` command allows us to "cut out" specified portions of each line of a file.  You can either pass the name of a file to `cut` directly or pass it output from another program via the `|` operator.

Here are some basic examples.

### Cutting Characters

The `-c` option tells `cut` to select specific *characters* from its input.  Take a look:

```shell
echo "one:two:three" | cut -c2
n
echo "one:two:three" | cut -c1-5
one:t
```

 In this case `-c2` tells `cut` to select the second character while `-c1-5` tells `cut` to select a range of characters (the first to the fifth).

 One can also select specific characters by using `,` instead of `-`.  For example, `-c1,3,5` would select the first, third, and fifth characters from each line of input.

### Cutting Fields

We can cut out specific columns or fields, too.  Take a look:

```bash
echo "one:two:three" | cut -d":" -f1
one
echo "one:two:three" | cut -d":" -f2
two
echo "one:two:three" | cut -d":" -f1-2
one two
```

The `-d":"` option tells cut to expect input where the fields are delimited by a `:` character.  `-f1` tells `cut` to select the first field (delimited by `:`), `-f2` the second field, and `-f1-2` the first and second field.

One can use `-f` without `-d`, although by default `cut` will assume that the input fields are delimited by tab characters.

### Practical Example

The `/etc/passwd` file contains information about every user on the system, including usernames and home directories.  The format is very standard.  The following example will print out all the users alone with their home directories on the system:

```shell
cut -d":" -f1,6 /etc/passwd
user1:/home/user1
user2:/home/user2
... etc. etc. ...
```

The fields in `/etc/passwd` are `:`-delimited with the first field containing the username and the sixth field containing the user's home directory.


---

## Practice

Consider `enki.txt` file:

```plain-text
Linux/Data Manipulation/cut command
Javascript/Core/Prototype
Java/Fundamentals/Inheritance
```

Print the *subtopic* name using `cut` :

```bash
cut ??? ??? ???
```

- `-d"/"`
- `-f2`
- `enki.txt`
- `-d" "`
- `-f1`


---

## Revision

The flag used to specify the delimiter of the `cut` command is ???.

- `-d`
- `-f`
- `-a`
- `-F`
