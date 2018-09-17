---
author: mihaiberq

levels:

  - basic

type: fillTheGap

category: feature

---

# Hooks, arrr?

---
## Content

Do you know what **hook** should be used for each of the following scenarios?

---
## Game Content

```text
Check if the commit message is properly
formatted.
```

* commit-msg
* pre-commit
* post-commit

%exp
`commit-msg` hooks are triggered by the creation of the file containing the commit message, but before the commit object creation. `pre-commit` hooks run before the message has been added. while `post-commit` hooks happen after the commit object has been created.
%

---

```text
Check if the new code is properly
documented.
```

* pre-commit
* post-commit
* pre-staging

%exp
The check should be done before registering the *commit message*, because the you wouldn't want to create the commit without proper documentation. The `pre-commit` is the right answer here.
%

---

```text
Check for code styling.
```

* pre-commit
* post-commit
* pre-push

%exp
If the code styling is not right, the commit object shouldn't be valid. Therefore, the answer should be `pre-commit`.
%

---

```text
Prevent pushing if the last commit's log
message starts with "work in progress".
```

* pre-push
* post-push
* pre-commit

%exp
This hook shouldn't restrict committing with that message, only pushing to the remote repository, so the `pre-commit` isn't the right choice. There is no available `post-push` event on the client side (unless you come up with a custom one). The right answer is `pre-push`.
%

---

```text
Notify other contributors after a commit
has gone through.
```

* post-commit
* pre-commit
* pre-push

%exp
If the commit went through, it means the `pre-commit` hook had already passed. Emails can be sent using the `post-commit` hook.
%

---

```text
Rebuild files after switching branches.
```

* post-checkout
* pre-checkout
* post-commit

%exp
If the `git checkout newFeature` command is successful, you could rebuild the project using the `post-checkout` hook.
%

---

```text
Rejecting commits from entering the remote
repository, after the client push.
```

* pre-receive
* post-receive
* post-push

%exp
`post-receive` scrips run after the server already accepted the push, so this wouldn't work. The hook has to be server side, but a custom-made `post-push` is triggered client side. The only answer left is `pre-receive`.
%

---

```text
Check if the message of an updated commit
has the right format.
```

* post-rewrite
* post-commit
* pre-commit

%exp
`post-rewrite` hook is run by commands that replace or update commits.
%
