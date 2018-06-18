---
author: nene

levels:

  - basic

  - medium

  - beginner

type: normal

category: must-know

tags:

  - nano


links:

  - '[Background processes](http://www.cyberciti.biz/faq/linux-command-line-run-in-background/){website}'


---

# How to pause a process and run others in the background

---
## Content

```
CTRL+Z  # pauses an application
```
```
fg # returns you to the
   # most recent application

bg # sends a paused process
   # to run in the background
```
Let's say you've opened a file in `nano` (terminal text editor) like this :
```
$ nano abc.txt
```

Midway through typing text into the file you realise that you need to quickly type another command into the terminal. 

All you really have to do is press `Ctrl-Z` which will force the foreground application to pause and return you to the terminal. You can then run any command you'd like and once you're finished enter `fg`, press return and you'll come back to the paused session.


If you have more than one paused process, you can list them with:
```
$ jobs
[1]+   Stopped     nano abc.txt
#^jobID
```
This will return the process ID that you can use to bring it back to the foreground:
```
$ fg %jobID
```
Or make it run in the background:
```
$ bg %jobID
```
Or kill it:
```
$ kill processID
```
The difference between *job IDs* and *process IDs* is that jobs are specific to a shell. Therefore, the job ID and process ID for the same process might differ:
```
$ jobs -l
[1]+  3720  Stopped   nano abc.txt 
#     ^processID
```

---
## Practice

Make the paused process 3 run in the background and bring paused process 2 to the foreground:
```
#process 3
$ ??? ??? 
#process 2
$ ??? ??? 
```

* `bg`
* `%3`
* `fg`
* `%2`

---
## Revision

Bringing the most recently paused process to the front is done by running 

??? .


* `fg`
* `bg`
* `pop`
* `start -fg`

 
