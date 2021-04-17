---
author: pawel
type: normal
category: tip
notes: For experts as it's quite unusual to see it and might confuse beginners?
---

# Calling one constructor from another


---

## Content

If a class has more than one constructor, it can be convenient to have the default constructor call another constructor of the same class. 

```java
public class BankAccount {
  public BankAccount(double initBalance) {
    balance = initBalance;
  }

  public BankAccount() {
    this(0);
  }
}
```

The command `this(0);` is effectively calling another constructor of this class and supplying the value 0.

Such a constructor call can occur only as the first line in another constructor.
