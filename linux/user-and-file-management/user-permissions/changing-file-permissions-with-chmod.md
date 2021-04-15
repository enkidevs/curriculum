---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Changing File Permissions With `chmod`


---

## Content

While the `chown` command allows us to change a file's ownership, the `chmod` command allows the permissions.

There are many ways to use the `chmod` command, so make sure to read `man chmod`.  Here are some of the most common.

### Adding or Removing Permissions

Start with these three examples:

```shell
# Make ~/waffles.txt user writable
chmod u+w ~/waffles.txt

# Make ~/waffles.txt group writable
chmod g+w ~/waffles.txt

# Make ~/waffles.txt writable by everyone
chmod o+w ~/waffles.txt
```

Similarly, `u+r` would make the file user readable, `g+r` group readable, and `o+r` readable by everyone else.  `+x` is the same for the executable permission.

If instead we used `u-w` or `u-r`, we would *remove* the writable (or readable) permission for the current user.

Here we can better see how the changes are reflected in `ls` output:

```shell
ls -l waffles.txt
-rw-r--r-- 1 jesse admin
    0 Jun 13 08:45 waffles.txt
chmod g+w waffles.txt
ls -l waffles.txt
-rw-rw-r-- 1 jesse admin
    0 Jun 13 08:45 waffles.txt
chmod o+w waffles.txt
ls -l waffles.txt
-rw-rw-rw- 1 jesse admin
    0 Jun 13 08:45 waffles.txt
chmod g-w waffles.txt
ls -l waffles.txt
-rw-r--rw- 1 jesse admin
    0 Jun 13 08:45 waffles.txt
```

As we add and remove permissions, you can see the changes reflected in the permission string displayed by `ls -l`.


---

## Practice

Give *full* access to `enki.txt` for the user and its group and remove access of others:

```plain-text
??? ???,o??? ???
```

- `chmod`
- `ug+rwx`
- `-rwx`
- `enki.txt`
- `ugo`
- `+rwx`


---

## Revision

What does `chmod go+x` do?

???

- Gives execute permissions to group and others
- Removes execute permissions from group and others
- Gives write and read permissions to user
- Removes write and read permission from group and others


---

## Quiz

### How do you run a script with elevated permissions?


Suppose you have a sh file named `script.sh`.
What of the following commands is the most
likely to successfully run the script?

```bash
./script.sh
bash: permission denied: ./script.sh
```

 ???

- chmod +x script.sh && ./script.sh
- sudo ./script.sh
- rm ./script.sh
- echo "#!/bin/sh" > script.sh && ./script.sh
