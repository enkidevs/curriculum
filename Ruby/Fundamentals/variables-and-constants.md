# Variables & Constants
author: jonac22

levels:

  - beginner

type: normal

category: must-know

links:

  - '[Variables and constants ](https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Variables_and_Constants)'
  
---
## Content

There are four variable types: **local**, **instance**, **class**, **global**

Examples:
```ruby
local_variable = 'local'
@instance_variable = 'instance'
@@class_variable = 'class'
$global_variable = 'global'
```

A **local** variable have a block scope

A **instance** variable belongs to the current object[1]

A **class** variable are shared between all instances of a class

A **global** variable, which is rarely used, can be accessed from anywhere within the program during runtime

It's not recommended to use global variables because it can be overwritten and cause mutations problems, for read-only values is better to use a **constant**

Example:
```ruby
CONSTANT = 'Enki'
```

**Constants** are looked up based on your scope or via the scope resolution operator

```ruby
class Foo
  BAR = 'Enki'
end
puts Foo::BAR   
# => Enki
```

---
## Practice

Fill the correct answer

```ruby
class A
  C = 'bar'
  class B
    def foo
      C 
    end
  end
end

instance_of_b = ???.new
puts instance_of_b.foo
#=> "bar"

puts A::C
#=> ???

```
* A::B
* "bar"
* B
* A::C

---
## Revision

Fill with the type of each variable

```ruby
$enki = "Enki"
???

@@foo = "foo"
???

@bar = "bar"
???
```

* global
* class
* instance
* local

---
## Footnotes

[1:SELF] the current object is also known as `self`, which is a pseudo-variable.
