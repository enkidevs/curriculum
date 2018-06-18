---
author: catalin

levels:

  - basic

  - medium

type: normal

category: how to




---

# SSH Pipes

---
## Content

One of the benefits of piping is that you can use it over networks and it does wonders for data transfer.

### Compressed file transfer

You can copy files over the network in an instant. This archives the files into a `tar` file, compresses it (`tar.gz`) and then copies it to the server:

```
$ tar cfz - folder |
  ssh user@enki 'tar xfz destdir'
```
Flags:
- `-c` creates a new archive
- `-z` compresses the archive
- `-f` specifies the filename used to tar into (`-` uses the standard output stream)
- `-x` extracts the content

You can use `-C` flag to specify a location in which the file to be extracted:
```
$ tar xfzC arch /folder1/folder2
```

### Backing up data with `dd`

You can also create an image of your local data with:
```
$ dd if=/folder/data |
  ssh user@enki 'dd of=data.iso'
```
Flags:
- `if` : input file
- `of` : output file

Note that half of the command is executed locally, while the other half is executed remotely.

---
## Revision

Can you pipe data through an SSH connection?

???

* Yes
* No

 
