# Monitor the progress of data through a pipe with `pv`
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:
  - data
  - progress
  - pipe
  - pv
  - pipeviewer
  - linux
  - terminal
  - shell
  - workout


---
## Content

You can use `pv` to monitor the progress of any pipe.

This can be done by installing `pv` and putting it between input / output pipes.



To install:
```
$ sudo apt-get install pv
```
Example:
```
$ dd if=/dev/urandom | pv | dd of=/dev/null
```
Output
```
1,74MB 0:00:09 [ 198kB/s] [ <=> ]
```
You could specify the approximate size with the `--size` if you want a time estimation.


You can also use it to output to stdout:
```
$ pv /home/user/bigfile.iso | md5sum
```
Output
```
50,2MB 0:00:06 [8,66MB/s] 
[==>  ] 49% ETA 0:00:06
```
Note that in this case, `pv` recognises the size automatically.

Using `pv` can prove extremely useful when working with big files or processes taking long time to complete.
 For example you can keep track how fast a file is transferred with `nc` command:
```
$ pv myFile | nc -w 1 example.com 3000
```
