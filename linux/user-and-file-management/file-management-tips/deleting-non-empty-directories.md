---
author: tuwidc
type: normal
category: must-know
tags:
  - linux
  - rm
  - terminal
  - delete
  - non empty
  - workout
  - introduction
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Deleting non-empty directories

---

## Content

Upon receiving the error:

```bash
Failed to remove 'folder':
  Directory not empty
```

Use:

```bash
rm -r folder
```

This will delete all files and folders contained in the `folder` directory as well as deleting the directory itself.

Add `sudo` at the beginning of the command in the case of a user lacking permissions to delete the folder:

```bash
sudo rm -r folderName
```

It is good practice to avoid using `-f(--force)` while deleting a directory.

If you are using absolute paths **take extra care** to not accidentally delete something important:

```bash
rm -r /folder1/ folder2/folder3
#             ^^^
```

The whitespace above is easy to miss but executing this command will remove the whole `/folder1`.

You can use letters `-f`, `-r`, `-v`:

`-f` = to ignore non-existent files, never prompt.

`-r` = to remove directories and their contents recursively.

`-v` = to explain what is being done.

---

## Practice

Complete the command to remove `old_folder` and print the name of each deleted file:

```bash
??? ??? ~/old_folder
```

- `rm`
- `-rv`
- `-r`
- `-v`
- `-rm`

---

## Revision

Recursively force remove `old_folder` :

```bash
??? ???
    ~/old_folder
```

- `rm`
- `-rf`
- `-rv`
- `-rm`
