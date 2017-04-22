# Classes & Objects
author: jonac22

levels:

  - begginer

type: normal

category: must-know

parent: variables-and-constants

links:

  - '[Classes](https://www.tutorialspoint.com/ruby/ruby_classes.htm)'

---
## Content

In Ruby, like in others languages such as Java o Python, a **class** is the blueprint from which individual **objects**[1] are created and where you define its behaviour.

Here is an example of defining a class:

```ruby
class Enki
end
```

As mentioned before in others insights, in Ruby everything is an object, so a class is an object too.

For creating a new object of class `Example` you need to execute the method `new`.

You can obtain an object's class with the method `class`.

Example:

```ruby
example_object = Example.new
example_object.class
#=> Example
```

Inside a class you can defined the behaviour of its objects with methods, using `def`. The last line in a method will be the return value.

Also you can define the `get/set` methods and `instance variables` with `attr_accessor`, passing one or more symbols.

Example:

```ruby
class Vehicle
  attr_accessor :make, :model

  def info
    "Make: " + @make + ", Model: " + @model
  end
end

car = Vehicle.new
car.make = "Enki"
car.model = "Ruby"
car.info
#=> "Make: Enki, Model: Ruby"
```

When you create an object with `new`, you can pass the initial values, but before you need to define the `initialize` method.

Example:

```ruby
class Vehicle
  attr_accessor :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end
end

car = Vehicle.new("Enki", "Ruby")
car.make
#=> Enki
car.model
#=> Ruby
```

---
## Practice

Fill the gaps

```ruby
class Person
  ??? :age

  def ???(age)
    @age = age
  end

  def tell_your_age
    "I'm "+ @age +" years old."
  end
end

bob = Person.new(20)
bob.tell_your_age
#=> I'm 20 years old.

```

* attr_accessor
* initialize
* new
* attr_reader

---
## Revision

How do you create an object in Ruby?

???

* `example = Example.new`
* `example = new Example`
* `example = Example()`
---
## Footnotes

[1:Instances] These individual objects are also know as **instances** of the class.
