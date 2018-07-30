---
author: mihaiberq

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: tip
---

# Know your rights!

---
## Content

Learn the Linux permissions as octal-letters pairs!

---
## Game Content

```bash
0420
???
```

* r–––w––––
* r––r–––––
* rw–r–––––

%exp
The permissions here are defined as follows: the owner can read and group can write.
%

---

```bash
0777
???
```

* rwxrwxrwx
* rw–rw–rw–
* –––––––––

%exp
Here we know that the owner, group and others have permission to read write and execute.
%

---

```bash
–wx–wx––x
???
```

* 0331
* 0223
* 0665

%exp
The owner and group can write and execute. Others can execute only.
%

---

```bash
1473
???
```

* r––rwx–wxt
* invalid
* ––xrwx–xT

%exp
The owner can read, group can read, write and execute and others can write and execute. The last t states that only the owner can delete this file.
%

---

```bash
–w–r–x–––
???
```

* 0250
* 2500
* 0341

%exp
The owner can write, the group can read and others can execute.
%

---

```bash
2415
???
```

* r––––sr–x
* r–s––xr–x
* r––––xr–x

%exp
Owner can read, the group can read. However, due to the `s` there they have the same privileges as the owner of the file. Others can execute the file.
%

---

```bash
rws––x––x
???
```

* 4711
* 4511
* 2633

%exp
The owner can write and read, group and others can execute.
%

---

```bash
r–xr–xr–x
???
```

* 0555
* 2444
* 0444

%exp
This file can be read and executed by anyone.
%

---

```bash
7777
???
```

* rwsrwsrwt
* rwxrwxrwx
* rwxrwsrwt

%exp
Anyone accessing this file has all privileges available.
%

---

```bash
0312
???
```

* –wx––x–w–
* r–x–w––w–
* r––––x–w–

%exp
The owner can write and execute, whilst the group can execute and others can write.
%