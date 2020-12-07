---
author: mihaiberq
type: fillTheGap
category: must-know
---

# Git-erminology


---

## Content

Think you know the right git terminology used for the following concepts?


---

## Game Content

```plain-text
Each team member has a copy containing the
full history of the project.
```

- Distributed Version Control
- Centralized Version Control
- Local Version Control
  %exp
  Centralized Version Control refers to a single, complete copy of the repository on a server, while Local Version Control means saving all file versions on the same machine.
  %

---

```plain-text
A single server keeps all the versions of
the files, but users can checkout only
the latest version.
```

- Centralized Version Control
- Distributed Version Control
- Local Version Control
  %exp
  Users of Distributed Version Control can access the whole history of the project and Local Version Control stores files locally.
  %

---

```plain-text
The most widely used Distributed Version
Control System.
```

- git
- SVN
- GitHub

%exp
Google Trends places `git` as the VCS with the most searches, accounting for 70% look-ups for the top 5 most-searched VCSs.
%

---

```plain-text
The git folder containing the changes
history.
```

- Repository
- Main
- Src

%exp
The official name for a folder containing the git-specific files is `repository`.
%

---

```plain-text
A tracked file, stored in the repository.
```

- Committed file
- Checkout file
- Staged file

%exp
If a file is in the repository, it means that it has been `committed`.
%

---

```plain-text
A tracked file, ready to be committed.
```

- Staged file
- Committed file
- Checkout file

%exp
In order for a file to be `committed`, it has to be watched by git (`tracked`) and the changes to the file to be acknowledged (`staged`).
%

---

```plain-text
A file that git knows it is there.
```

- Tracked file
- Committed file
- Staged file

%exp
A file for which git calculates content differences is called a `tracked` file.
%

---

```plain-text
A file git doesn't know anything about.
```

- Untracked file
- Tracked file
- Committed file

%exp
A new file in the local repository which is yet to be watched by git is called an `untracked` file.
%

---

```plain-text
A pointer to a specific base commit.
```

- Branch
- Tree
- Repository

%exp
Branching is a moment in time (commit history) when the main tree is split into two.
%

---

```plain-text
A copy of the repository as a whole.
```

- Clone
- Branch
- Commit

%exp
The action of downloading the code from a git repository is called `cloning`.
%
 
