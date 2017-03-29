# Conditional structures
author: jonac22

levels:

  - beginner

type: normal

category: must-know

parent: variables-and-constants

links:

  - '[Conditional structures](https://www.tutorialspoint.com/ruby/ruby_if_else.htm)'
  
---
## Content

In Ruby, conditional structures can be written with the classical `if`.

```ruby
if condition
	  ...
elsif condition
	  ...
else
	  ...
end
```

Example usage:

```ruby
foo = 'foo'
if foo
    puts 'Hello Enki!'
else
    puts 'Hello World!'
end
#=> 'Hello Enki!'    
```

Or with `case`, which is very similar to `switch` in others languages, like **C** or **Java**.

```ruby
case expression0
when expression1, expression2
   ...
when expression3, expression4
   ...
else
   ...
end
```

Example usage:

```ruby
foo = 'foo'
case foo
when 'foo'
   puts 'Hello Enki!'
when 'bar'
   puts 'Hello World!'
else
   puts 'bar'
end
#=> 'Hello Enki!'    
```

`if` can be replaced with `unless` which executes code if condition is **false**.

In a condition, everything is evaluated as `true`, except `false` and `nil`.

`if` and `unless` also can be written like this:
```ruby

code if condition

code unless condition

```

Example usage:

```ruby

foo = 'foo'
foo = 'bar' if foo == 'foo'

puts foo
#=> 'bar'

foo = 'foo'
foo = 'bar' unless foo == 'foo'

puts foo
#=> 'foo'
```

---
## Practice

```ruby
foo = 'foo'
foo = 'bar' unless foo
puts foo
#=> ???

foo = nil
foo = 'enki' ??? foo

puts foo
#=> 'enki'

```

* 'foo'
* unless
* if
* 'bar'

---
## Revision

```ruby
age = 19
??? age
when 0..2
    puts "baby"
??? 2..12
    puts "child"
when 13..18
    puts "youth"
???
    puts "adult"
end
```
#=> ???

* "case"
* "when"
* "else"
* "adult"
* "youth"
