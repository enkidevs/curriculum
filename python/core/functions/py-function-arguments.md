---
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

standards:
  python.functions.2: 10

aspects:
  - introduction
links:

  - '[More about arguments](https://www.tutorialspoint.com/python/python_functions.htm){website}'


---

# Function arguments

---
## Content

Functions can be called using any of the following types of arguments (also called parameters):
- Required arguments
- Keyword arguments
- Default arguments

*Required arguments* take into account the *positional order* in which the parameters were defined. The *number of arguments* is also significant. If these two restrictions are violated, then the function throws a *syntax error*.

Consider the following example:
```python
def print_info(name, age, gender):
  print ('Name: ', name)
  print ('Age: ', age)
  print ('Gender: ', gender)
  return;

n = 'Doris'
a = 20
g = 'female'
print_info(n, a);
```
Because the function was defined with three parameters, but the call presented only two parameters the following error will result:
```
Traceback (most recent call last):
  File "python", line 10, in <module>
TypeError: print_info() missing 1
required positional argument: 'gender'
```
If we used all three parameters in the right order the output would be as follows:
```
Name:  Doris
Age:  20
Gender:  female
```

If we were to use *keyword arguments* we could place them in a different order from the one they were defined. This is possible because the function caller identifies arguments using the parameter name.

Consider the following example:
```python
def print_info(name, age, gender):
  print ('Name: ', name)
  print ('Age: ', age)
  print ('Gender: ', gender)
  return;

print_info(name = 'Seba',
           gender = 'male',
           age = 21);
```
The following output will be generated:
```
Name:  Seba
Age:  21
Gender:  male
```

*Default arguments* assume default values in the event of a function call who's *default parameters* had no values provided. Note that *default arguments* must be placed at the end of the parameters list when we define the function.

Consider the following example:
```python
def print_info(name, gender, age = 20):
  print ('Name: ', name)
  print ('Age: ', age)
  print ('Gender: ', gender)
  return;


print_info(name = 'Seba', gender = 'male');
```

Our function will print the following:
```
Name:  Seba
Age:  20
Gender:  male
```

If we defined our function like this:
```python
def print_info(name, age = 20, gender):
```
The following error is thrown:
```
Traceback (most recent call last):
  File "python", line 1
SyntaxError: non-default argument
follows default argument
```

---
## Practice

Will the following snippet throw any errors?
```python
def foo(name, salary = 1500, department):
  print('Name: ',  name)
  print('Salary: ', salary)
  print('Department: ', department)

name = 'John'
department = 'IT'

foo(name, department);
```
???


* Yes, it will.
* No, it won't.
* Yes, but only for some input.

---
## Revision

Fill the gaps such that the code will run with no errors.
```python
def foo(product, ???, ???):
  print('Product: ', product)
  print('Price: ', price)
  print('Quantity: ', quantity)

foo('Baseball bat', ???)
```

* quantity
* price='$1.00'
* 150
