# Commit spree
author: mihaiberq

levels:

  - beginner

type: bugSpot

category: how to

---
## Content

Jake just got access to a super-secret private FBI GitHub project. Being a good guy, instead of trying to steal and sell the code, he has created an empty repository under his account in which he looks to fork the FBI project.

Although a Git master, Jake has made some mistakes when rushing to submit the pull request.

Can you spot them?

---
## Game Content

$ mkdir "FBI private project"
$ cd FBI\ private\ project
$ git init
  https://github.com/FBI/secret.git
//

%exp
The job of `git init` command is to initializes an empty Git repository in the folder specified. Even though it might seem that this syntax will clone the repository, it will actually create a new series of subdirectories: `https:/github.com/FBI/secret.git`, in which an empty Git repository will be initialized.
%

---
$ git remote add upstream
  https://github.com/FBI/secret.git
$ git remote add upstream
// $ git remote add origin
  https://github.com/jaketastic/FBIsecret.git

%exp
Git will throw an error when trying to add two remotes with the same name. By convention, the repository from which the fork is made is called `upstream`, while the actual fork is called `origin`.
%

---
$ git remote -v
origin https://github.com/jaketastic/FBIsecret.git (fetch)
origin https://github.com/jaketastic/FBIsecret.git (push)
upstream https://github.com/FBI/secret.git (fetch)
upstream https://github.com/FBI/secret.git (push)
$ git fetch origin
// $ git fetch upstream

%exp
Jake was probably looking to fetch the meta-data from the upstream repository (FBI one), as his newly created fork repository is empty.
%

---
$ git pull upstream
 // $ git merge upstream/master
$ git status
On branch master
nothing to commit

%exp
Git already fetched all the information needed from the upstream, only that the local directory will appear empty. This happens because his local master branch is empty. To see the files locally, he merges the `upstream/master` into his own master branch.
%

---
$ git push upstream
 // $ git push --set-upstream origin master
$ git branch bug-fix
$ git checkout bug-fix

%exp
Jake shouldn't be pushing straight to the `upstream` repository (FBI), but to his own fork: `origin`.
%

---
$ git add .
$ git commit "bug fix"
 // git commit -m "bug fix"
$ git push --set-upstream origin bug-fix

%exp
The `commit` command is missing the `-m` flag which allows adding an inline commit message. Without it, Git tries to commit the `bug fix` file, which doesn't exist.
%
