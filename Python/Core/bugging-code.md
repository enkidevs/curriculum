# Bugging code
author: catalin

levels:

  - basic

  - advanced

  - medium

  - beginner

type: bugSpot

category: tip

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
---
de square(x):
//def square(x):
	return x*x

a = 5
print(square(a))
---
class A:
    def printPi(self):
    	print(3.14)
    def printE(self):
    	print(2.71)
a = A()
a.printPi
//a.printPi()
---
for i in [1,2,3]:
	print(i)
for c in "enki":
	print(c)	
for k in {"x"= 1, "y"= 2}:
//for k in{"x": 1, "y": 2}:
    print(k)
---
class Enki:
	def one(self):
		retrun 1
// return 1
	def two(self):
		return 2
	def three(self):
		return 3
---
def gcd(x, y):
    while y !== 0:
// while y != 0:
        (x, y) = (y, x % y)
    return x;
print(gcd(20,30))
---
def gcd(a, b):
    if (b == 0)
// if (b == a):
        return a
    else:
        return gcd(b, a % b)
print(gcd(45,90))
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
---
from math import PI
// from math import pi

def circleArea(radius):
	area = pi * radius * 2
	return area
print(circleArea(4))