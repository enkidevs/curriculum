---
author: rosielowther

levels:

  - advanced

type: normal

category: feature

aspects:
  
  - introduction
  - obscura
  

links:

  - '[Working With Dates In Git](https://alexpeattie.com/blog/working-with-dates-in-git){website}'


---

# Dates in git

---
## Content

Git has a very flexible date format.

You can specify a date both in a **fixed** (01/01/16) and **relative** format ("last week"). 

Git can handle every division of time between seconds and years, timezones and most date formats. It can even make a best guess if you give it something it doesn't recognise!

**Date examples**


To see the commits since the 1st Jan 2016:
```
$ git log --since="01/01/2016"
```
To compare the repository between two different dates:
```
$ git diff master@{"yesterday"} 
  master@{"2 weeks 2 days ago"}
```
To revert to an old version of a repository:
```
$ git revert master@{"last Tuesday"}
```
Note: these commands use the **committer** date not the **author** date. The committer date refers to the time the work was last applied.

---
## Practice

To retrieve all the logs starting from last week until yesterday, you would run:
```
$ git ??? --since=??? 
     ???="yesterday"
```

* `log`
* `"last week"`
* `--until`
* `until`
* `logs`

---
## Revision

`git` ??? understand relative dates like `"yesterday"` and `"1month6days ago"`.

* can
* can’t

 
