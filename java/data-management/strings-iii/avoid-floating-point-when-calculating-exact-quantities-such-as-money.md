---
author: adamMontgomerie
type: normal
category: tip
tags:
  - rounding
  - floating-point-numbers
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=213){website}
---

# Avoid floating-point when calculating exact quantities such as money


---

## Content

Beware of `float` and `double` when attempting to calculate or represent exact quantities such as money. This is because of the risk of rounding errors.

Instead, use `BigDecimal` to represent these values. `BigDecimal` allows the programmer to specify rounding behaviour. If no rounding behaviour has been specified and an exact value cannot be calculated, a non-terminating decimal expansion `ArithmeticException` will be thrown. So special care should be given to catching and appropriately handling these exceptions, when e.g. division between two `BigDecimal` instances is performed.
 
