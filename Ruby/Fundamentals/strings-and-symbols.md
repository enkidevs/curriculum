# Strings & Symbols
author: jonac22

levels:

  - beginner

type: normal

category: must-know

parent: numbers

links:

  - '[Strings](https://www.tutorialspoint.com/ruby/ruby_strings.htm)'
  - '[Symbols](http://rubylearning.com/satishtalim/ruby_symbols.html)'
  
---
## Content

A Ruby **String** can be single or double quoted. But only double quoted strings can be **interpolated**[1].

```ruby
"Enki" == 'Enki'
#=> true

# Interpolation:
company = "Enki"
"Hello, #{company}"
#=> "Hello, Enki" 
```

Be careful when you operate with a string, because it's an object and can be mutated.

```ruby
foo = 'foo'
bar = foo
bar.replace('bar')
bar = 'enki'
puts foo
#=> "bar"
```

A Ruby **Symbol** starts with a colon. Symbols are practical for hash keys[2].

```ruby
:Enki == 'Enki'
#=> false
```

The principal difference between symbols and strings is that symbols are **unique**.

```ruby
:Enki.object_id == :Enki.object_id
#=> true

'Enki'.object_id = 'Enki'.object_id
#=> false
```

---
## Practice

Fill the gaps with the outputs.

```ruby
foo = 'foo'
bar = foo
puts bar
???
bar.replace('bar')
puts foo
???
bar = 'enki'
puts foo
???
puts bar
???
```

* foo
* bar
* bar
* enki

---
## Revision

Fill with the results of each comparation.

```ruby
company = "Enki"
"Enki".object_id == company.object_id
???

company = "Enki"
:Enki.object_id == company.object_id
???

company = :Enki
:Enki.object_id == company.object_id
???
```

* false
* false
* true
* true

---
## Footnotes

[1:INTERPOLATION] String interpolation is the process of evaluating a string literal containing one or more placeholders, yielding a result in which the placeholders are replaced with their corresponding values.

[2:HASH] a hash is one of Ruby basic data structures, commonly known as a key-value dictionary. 
