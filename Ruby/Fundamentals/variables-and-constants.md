# Variables & Constants
author: jonac22

levels:

  - beginner

type: normal

category: must-know

parent: strings-and-symbols

links:

  - '[Variables and constants ](https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Variables_and_Constants)'
  
---
## Content

There are four variable types: 
- **local**
- **instance**
- **class**
- **global**

Examples:
```ruby
local_variable = 'local'
@instance_variable = 'instance'
@@class_variable = 'class'
$global_variable = 'global'
```

A **local** variable have a block scope.

A **instance** variable belongs to the current object[1].

A **class** variable are shared between all instances of a class.

A **global** variable, which is rarely used, can be accessed from anywhere within the program during runtime.

It's not recommended to use global variables because it can be overwritten and cause mutations problems. For read-only values it is better to use a **constant**.

Example:
```ruby
CONSTANT = 'Enki'
```

**Constants** are looked up based on your scope or via the scope resolution operator.

`class/end` structure will be seen in depth in a future workout. For now, a `class` can wrap constants and other classes.

```ruby
class Foo
  BAR = 'Enki'
end
puts Foo::BAR   
# => Enki

class Foo
  class Bar
      BAR = 'Enki'
  end
end
puts Foo::Bar::BAR
# => Enki
```

---
## Practice

Fill the correct answer.

```ruby
class A
  C = 'bar'
  class B
    D = 'foo'
  end
end

puts ???::D
#=> "foo"

puts A::C
#=> ???

```
* A::B
* "bar"
* "foo"
* B
* A

---
## Revision

Fill with the type of each variable.

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

[1:SELF] the current object is also known as `self`, which is a pseudo-variable. It is very similar to `this` in other languages, like **Java**.
