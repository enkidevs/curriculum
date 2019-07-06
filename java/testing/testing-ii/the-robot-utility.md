---
author: catalin

levels:

  - basic

type: normal

category: feature

aspects:

  - workout

  - deep

links:

  - '[www.developer.com](http://www.developer.com/java/other/article.php/2212401/Introduction-to-the-Java-Robot-Class-in-Java.htm){website}'
  - '[www.java-tips.org](http://www.java-tips.org/java-se-tips-100019/21-java-awt/1758-how-to-use-robot-class-in-java.html){website}'

---

# The Robot Utility

---

## Content

`Java.awt.Robot` is a class used to mimic the human behavior, taking control over the mouse and keyboard. For example:

```java
Robot myRobot = new Robot();
// Moving the mouse:

myrobot.mouseMove(x,y);
//(0,0) represents the upper-left corner

// Inserting a delay:
myRobot.delay(2000);
// Pressing the left mouse button:
myRobot.mousePress(
InputEvent.BUTTON1_MASK);
//R eleasing the left mouse button:
myRobot.mouseRelease(
InputEvent.BUTTON1_MASK);
// Typing a letter:
myRobot.keyPress(KeyEvent.VK_H);
// types letter H
```

Note that `Robot` class won't just generate the events, but actually perform the actions.

Some platforms will require special privileges so make sure you use `Robot` in a try-catch block:

```java
try {
 // use myRobot...
} catch(AWTException awe) {
 // handle exception...
}
```

---

## Practice

Trigger a left mouse button click using the `Robot` class:

```java
Robot robot = new Robot();
robot.???(
    InputEvent.???);
```

* `mousePress`
* `BUTTON1_MASK`
* `BUTTON2_MASK`
* `mouseRelease`
* `keyPress`

---

## Revision

Using the `Robot` class, move the mouse to the desired coordinates:

```java
Robot myRobot = new Robot();
myRobot.???(0,0);
```

* `mouseMove`
* `moveMouse`
* `mousePress`
* `mouseRelease`
