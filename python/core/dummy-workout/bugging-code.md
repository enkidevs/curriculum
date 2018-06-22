---
author: catalin

levels:

  - basic

  - advanced

  - medium

  - beginner

type: bugSpot

category: tip

---
# Bugging code

---
## Content

Each of the following snippets have a little bug that will raise an error.

Can you spot the line on which the mistake was made?

---
## Game Content

try:
    print(1)
    raise Exception()
except:
    print(2)
else
// else:
    print(3)
finally:
    print(4)
%exp
Here `else` is missing the colon(:) sign.
%

---
de square(x):
//def square(x):
	return x*x

a = 5
print(square(a))
%exp
The keyword used to define functions is `def`, not `de`.
%

---
class A:
    def printPi(self):
    	print(3.14)
    def printE(self):
    	print(2.71)
a = A()
a.printPi
//a.printPi()
%exp
In order to call a function, apart from the name of the function we need to use `()`.
%

---
for i in [1,2,3]:
	print(i)
for c in "enki":
	print(c)
for k in {"x"= 1, "y"= 2}:
//for k in{"x": 1, "y": 2}:
    print(k)
%exp
The correct syntax requres `:` instead of  `=`.
%

---
class Enki:
	def one(self):
		retrun 1
// return 1
	def two(self):
		return 2
	def three(self):
		return 3
%exp
There is a typo here: it is `return`, not `retrun`.
%

---
def gcd(x, y):
    while y !== 0:
// while y != 0:
        (x, y) = (y, x % y)
    return x;
print(gcd(20,30))
%exp
To check whether if two things are not equal we use `!=`, not `!==`.
%

---
def gcd(a, b):
    if (b == 0)
// if (b == a):
        return a
    else:
        return gcd(b, a % b)
print(gcd(45,90))
%exp
In order to get the greatest common divisor using `gcd` function we define, the condition checked by `if`  statement must be `(b==a)` not `(b==0)`.
%

---
def exp(x, n):
    if n == 0:
        return 1
    el if n % 2 == 0:
// elif n % 2 == 0:
        return exp(x*x, n/2)
    else:
        return x * exp(x, n-1)
print(exp(2,3))
%exp
The correct syntax for `else if` in Python is `elif`.
%

---
from math import PI
// from math import pi

def circleArea(radius):
	area = pi * radius * 2
	return area
print(circleArea(4))
%exp
`pi` value is spelled with capital letters, instead of lower case, but the correct syntax is with lower case letters.
%
 
