---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [Bundling Official
    Documentation](http://git-scm.com/book/en/v2/Git-Tools-Bundling){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Sharing data by bundling


---

## Content

As well as sharing git data over a network, you can also bundle the data into one file.

The `bundle` command creates a binary file which you can email or physically transfer to another computer. 

To create a file `myBundle` from your repository:

```bash
git bundle create myBundle HEAD master
```

To access the commits on another computer:

```bash
git clone myBundle bundled_repo
cd bundled_repo
```

To be safe, you can verify that the commit is valid before cloning:

```bash
git bundle verify ../myBundle
```


---

## Practice

How would you bundle the whole `newFeature` branch?

```bash
git bundle ??? FeatureBranch ??? ???        
```

- `create`
- `HEAD`
- `newFeature`
- `-create`
- `head`


---

## Revision

To verify if `newBundle` is a valid bundle, you would run

```bash
git ??? ??? ../newBundle
```

- `bundle`
- `verify`
- `-b`
- `--verify`
