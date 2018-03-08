# The Basics of Command Substitution
author: jfarmer

levels:

  - basic

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [More
    substitutions](http://www.tldp.org/LDP/abs/html/commandsub.html){website}

tags:
  - introduction
  - workout
---
## Content

Using `|`, we can glue the standard output of one program to the standard input of another program.  Using `>` we can redirect standard output to a file.  However, there are times when we want to store whatever the program sends to standard output into a shell variable or use it as a command line argument for another program.

To do this, we can use command substitution via the `$(...)` syntax.

For example, let's say we want to check the permissions on the `curl` executable.  We can't simply run `ls -l curl`, as that tells `ls` to look for a file named `curl` in the current directory.  Even if such a file exists, it's not the same one that gets executed when we run the `curl` command.

We might *happen* to know that `curl` is located at `/usr/bin/curl` or we can use `which` to get the full path to the executeable:

```console
$ which curl
/usr/bin/curl
$
```

Now we can run `ls -l /usr/bin/curl`:

```console
$ ls -l /usr/bin/curl
-rwxr-xr-x  1 root  wheel  172016
Dec  2  2015 /usr/bin/curl*
$
```

We can capture the output of `which curl` and pass it to `ls -l` directly using `$(...)`, like so:

```console
$ ls -l $(which curl)
-rwxr-xr-x  1 root  wheel  172016
Dec  2  2015 /usr/bin/curl*
$
```

The output of the command inside `$(...)` (here `which curl`) is passed to `ls -l` as if we typed it directly.

### Backticks Instead of `$(...)`

It's common to see backticks `` `...` `` instead of `$(...)`.  The two are equivalent, with the former existing for backwards compatibility with older shells.

```console
$ ls -l `which curl`
-rwxr-xr-x  1 root  wheel  172016
Dec  2  2015 /usr/bin/curl*
$
```

---
## Practice

You have the following file `websites.txt`:
```
google.com
twitter.com
enki.com
```
Use substitution to pass the content of the file to `curl`:
```
$ ??? ???(???)
```
* `curl`
* `$`
* `cat websites.txt`
* `''`
* `<`
* `websites.txt`

---
## Revision

If you want to use the output of a program as a command line argument, you would have to use

???.
* $(...) or `...`
* >
* |
* >>
