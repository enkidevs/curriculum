---
author: kld14

levels:

  - basic

  - beginner

type: normal

category: feature

tags:

  - java

  - ternary

  - conditional


links:

  - '[alvinalexander.com](http://alvinalexander.com/java/edu/pj/pj010018){website}'


---

# Ternary operator

---
## Content

An alternative to using an if/else statement is the use of the ternary operator, whose syntax appears below.
```
result = testCondition ? value1 : value2;
```
Below are two equivalent statements.

```
int x;
if (y > 3) {
  x = 1;
} else {
  x = 0;
}
```
```
int x = y > 3 ? 1 : 0;
```

---
## Practice

Which of the following is equivalent to the if statement below:
```
int count;
if (flag > 5) {
  count = 2;
}else {
  count = 5;
}
```
???

* int count = flag > 5 ? 2:5;
* int flag = count > 5 ? 5:2;
* int count = flag > 5 ? 5:2;
* int x = y > 5 ? 5/2;
* int count = flag > 5 ? 5/2;

---
## Revision

Complete the following ternary operator syntax with the correct symbols:
```
int num = x > 2 ??? 2 ??? 0
```


* `?`
* `:`
* `>`
* `<`
* `/`
* `//`
* `+`

---
## Quiz 
### Which single boolean should be negated for the output to be true?

```java

System.out.println(true?false:true==true?false:true);
                    1     2    3          4
```

 ???

* 2
* 1
* 3
* 4
 
