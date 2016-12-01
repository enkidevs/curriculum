# Cherry-pick a commit
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

parent: managing-branches

links:

  - >-
    [swsblog.stanford.edu](https://swsblog.stanford.edu/blog/cherry-picking-small-git-lesson){website}

---
## Content

Cherry-pickin[1]g is the[2]  method to apply a single, specific commit from another branch.iA  

For example:
```
$ git checkout master
$ git cherry-pick a456bd7
# merge commit a456bd7 (from another branch)
# with branch master
```
This is most useful when you are unable to merge the two branches. For example, you might want to fix a security issue present in both branches.

![alt description](%3Csvg%20viewBox%3D%220%200%20130%2047%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Cg%20fill%3D%22%23FFF%22%3E%3Cpath%20d%3D%22M87.796.586h-3.42c-.44%200-.798.364-.798.815v43.903c0%20.45.357.815.798.815h3.42c.44%200%20.797-.365.797-.815V1.4c0-.45-.357-.814-.797-.814M44.292%2020.93h-3.42c-.44%200-.796.367-.796.817v23.556c0%20.45.357.815.797.815h3.42c.44%200%20.796-.365.796-.815V21.747c0-.45-.357-.816-.798-.816M71.416.586h-3.42c-.44%200-.798.364-.798.815v23.577c0%20.45.357.815.8.815h3.418c.44%200%20.797-.364.797-.815V1.4c0-.45-.357-.814-.797-.814M29.032.586H11.477c-.44%200-.797.364-.797.815v3.3c0%20.448.357.814.797.814h17.555c.44%200%20.797-.366.797-.815V1.4c0-.45-.358-.814-.798-.814M29.032%2041.19H11.477c-.44%200-.797.365-.797.816v3.297c0%20.45.357.815.797.815h17.555c.44%200%20.797-.365.797-.815v-3.297c0-.45-.358-.815-.798-.815M25.394%2021.704c0-.45-.358-.816-.798-.816H6.51c-.44%200-.797-.366-.797-.816V1.402c0-.452-.357-.816-.797-.816h-3.42C1.057.586.7.95.7%201.4v43.903c0%20.45.358.815.8.815h3.418c.44%200%20.797-.365.797-.815v-18.67c0-.452.358-.818.798-.818h18.086c.44%200%20.798-.364.798-.815zM129.19.586h-3.418c-.44%200-.8.364-.8.815v43.903c0%20.45.36.815.8.815h3.418c.44%200%20.798-.365.798-.815V1.4c0-.45-.357-.814-.798-.814M98.412%2022.464L113.975%201.9c.405-.536.03-1.314-.632-1.314h-4.276c-.247%200-.48.117-.632.318L93.485%2020.82c-.337.426-.51.932-.545%201.444-.005.066-.003.132-.004.2%200%20.066%200%20.134.004.2.017.256.07.512.16.756.09.247.218.484.387.7l16.663%2021.327c.15.194.38.306.623.306h4.25c.668%200%201.04-.792.62-1.326l-17.23-21.963M44.777.586h-3.713c-.77%200-1.245.862-.842%201.534l26.094%2043.608c.145.243.403.39.68.39h4.417c.625%200%201.008-.7.68-1.244L45.616%201.064c-.18-.297-.498-.478-.84-.478z%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

---
## Practice
The commit cherry-picked in the example was applied on ???. ???

*master
*second
---
## Revision

In order to apply a *single* commit (from another branch) on the current branch, you use
```
$ git ??? a456bd7
```
*`cherry-pick`
*`pick`
*`merge
---
## Footnotes

[1:ala bala]
Hello there.

[2:two]
Second footnot
