---
author: jfarmer
type: normal
category: must-know
tags:
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Changing User Passwords With `passwd`


---

## Content

To change a user's password, including your own, use the `passwd` command.

To change your own password, simply run `passwd` without any additional arguments.  You will be asked to enter your current password and then type a new password twice to confirm it.  You do *not* need to have `root` permissions to change your own password, so it's not necessary to use `sudo`.

To change another user's password, supply a username to the `passwd` command.  You *do* need `root` permission to change another user's password, so it's necessary to use `sudo`, like so:

```shell
sudo passwd jesse
```

This will prompt you to change the password for the user `jesse`.

There are many options available to `passwd`, like requiring a user to change it after a certain number of days, forcibly expiring a user's password, etc., but they are only used in more advanced contexts and can vary from system to system.

Read `man passwd` for more details.


---

## Practice

Change `enkiUser`'s password:

```bash
??? ??? ???
```

- `sudo`
- `passwd`
- `enkiUser`
- `changepass`
- `enki`


---

## Revision

Do you have to be a root to change your own password using  `passwd` ?  

???

- No
- Yes


---

## Quiz

### Can you identify a security vulnerability?


Which of the following is most likely to cause a lot of problems?

 ???

- Allowing regular users to create new root users without sudo
- Forcing expiry and renewal dates for root user's password
- Using sudo passwd to change someone's password
- Using sudo passwd to change your own password
