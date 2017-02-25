# Numbers
author: jonac22

levels:

  - beginner

type: normal

category: must-know

links:

  - '[Numeric class](https://ruby-doc.org/core-2.2.0/Numeric.html)'
  - http://ruby.bastardsbook.com/chapters/numbers/
  - http://rubylearning.com/satishtalim/numbers_in_ruby.html
  
---
## Content

Ruby has all basic operators for numbers

`+ - * / ** %`

**Integers** are objects of class Fixnum or Bignum, each one representing integers of differing sizes.

The **floating-point** numbers are objects of class **Float**. The Complex, BigDecimal, and Rational classes are not built-in but are distributed as part of the standard library.

When operating between **Integer** objects, you get an **Integer** as result.

```ruby
16 / 5
#=> 3
```

But when operating with at least a **Float**, the result will be a **Float**.
```ruby
16 / 5.0
#=> 3.2
```
To convert a number to Float you can add a dot like the before example or call `to_f` method[1]. The same is for integers with `to_i`, it will truncate the decimal part.

```ruby
16 / 5.to_f
#=> 3.2
```

---
## Practice

Which will be the result of the next operation?

`37 / 2.9.to_i`

???

* 18
* 12.75 
* 18.5

---
## Revision

Which class will be the result of this operation?

`10 * 3.0`

???

* Float
* Fixnum
* Bignum

---
## Footnotes

[1:OBJECT-ORIENTED] Remember that in Ruby, **everything is an object**, so a number is an object and it responses to methods like `abs`, `truncate`, `zero?`, and many others defined in its class and superclass.
