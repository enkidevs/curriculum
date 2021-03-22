---
author: jfarmer
type: normal
category: must-know
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Using `dd` To Create Disk Images


---

## Content

The `dd` command is a versatile tool for copying and converting files.  Most commonly it is used to interact with disk drives, which are exposed as files via the `/dev` filesystem.

**Note**: one must be careful when using `dd` to write directly to a disk drive since incorrect command line arguments can result in a corrupted drive.

### Creating a Disk Image

A common use case for `dd` is creating a disk image file from a physical disk, e.g., a CD-ROM.  Let's say your CD/DVD drive is `/dev/cdrom`.  The following `dd` command will create an image (ISO file) of the CD:

```shell
dd if=/dev/cdrom of=~/my_cd.iso
```

The arguments for `dd` have an unorthodox syntax, but in this case `if=` specifies the input file and `of=` specifies the output file.  This will copy the contents of `/dev/cdrom` byte-for-byte into the file `~/my_cd.iso`.

You can back up *any* disk this way: CD-ROMs, DVDs, BluRays, USB sticks, others hard drives, etc.


---

## Revision

You can create an image of disks by running:

```bash
??? ???=/dev/cdrom 
      ???=~/my_disk.iso
```

- `dd`
- `if`
- `of`
- `-of`
- `-if`
- `cp`
