# Function arguments
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[More about arguments](https://www.tutorialspoint.com/python/python_functions.htm)'

---
## Content

Functions can be called using any of the following types of arguments (also called parameters):
- Required arguments
- Keyword arguments
- Default arguments
- Variable-length arguments

*Required arguments* take into account the *positional order* in which the parameters were defined. The *number of arguments* is also important. If this two restrictions are violated then the function gives a *syntax error*.

Consider the following example:
```
def print_info(name, age, gender):
  print ('Name: ', name)
  print ('Age: ', age)
  print ('Gender: ', gender)
  return;

n = 'Doris'
a = 20
g = 'Female'
print_info(n, a);
```
Because the function was defined with three parameters, but the call presented only two parameters the following error will result:
```
Traceback (most recent call last):
  File "python", line 10, in <module>
TypeError: print_info() missing 1
required positional argument: 'gender'
```
If we used all three parameters in the right order the result will be as follows:
```
Name:  Doris
Age:  20
Gender:  Female
```

When we use *keyword arguments* we can place them in a different order from the one they were defined. This is possible because the function caller identifies arguments using the parameter name.

Consider the following example:
```
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
```
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
```
def print_info(name, age = 20, gender):
```
We will get such an error:
```
Traceback (most recent call last):
  File "python", line 1
SyntaxError: non-default argument
follows default argument
```

There are cases in which we need to process the same function for more arguments then we specified at the time of function definition. Here is where *variable-length arguments* are useful.
The syntax for this type of parameters states that an asterisk (\*) must be placed before that holds the values of all nonkeyword variable arguments.

For a better understanding, consider the following example:
```
def print_info(name, *fam_members):
  print ('Name: ', name)
  print('Familly members: ')
  for mem in fam_members:
    print(mem)
  return;

name = 'Paul'

print_info(name, 'Ruth',
          'Denis', 'Jasmin');
```
The output will look as follows:
```
Name:  Paul
Family members:
Ruth
Denis
Jasmin
```

---
## Practice

Do you think the following code will run with no errors?
```
def foo(name, salary = 1500, department):
  print('Name: ',  name)
  print('Salary: ', salar)
  print('Department: ', department)

name = 'John'
department = 'IT'

foo(name, department);
```
???

* no
* yes

---
## Revision

Fill the gaps such that the code will run with no errors.
```
def foo(continent, population,
        ???top_countries):
  print('Continent:', continent)
  ???('Population:', population)
  print('First 3 countries:')
  for nat in ???:
    print(nat)

con = 'Europe'
pop = 742,452,000

foo(con, ???, 'Germany', 'UK', 'France')
```

* *
* print
* top_countries
* pop
* con
* ,
* for
* in
