---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:
  
  - deep
  - workout
  - obscura
  

links:

  - '[Bundling Official Documentation](http://git-scm.com/book/en/v2/Git-Tools-Bundling){website}'


---

# Sharing data by bundling

---
## Content

As well as sharing git data over a network, you can also bundle the data into one file.

The `bundle` command creates a binary file which you can email or physically transfer to another computer. 

To create a file `myBundle` from your repository:
```
$ git bundle create myBundle HEAD master
```
To access the commits on another computer:
```
$ git clone myBundle bundled_repo
$ git cd bundled_repo
```
To be safe, you can verify that the commit is valid before cloning:
```
$ git bundle verify ../myBundle
```

---
## Practice

How would you bundle the whole `newFeature` branch?
```
$ git bundle ??? 
   FeatureBranch ??? ???        
```

* `create`
* `HEAD`
* `newFeature`
* `-create`
* `head`

---
## Revision

To verify if `newBundle` is a valid bundle, you would run
```
$ git ??? ??? ../newBundle
```

* `bundle`
* `verify`
* `-b`
* `--verify`

 
