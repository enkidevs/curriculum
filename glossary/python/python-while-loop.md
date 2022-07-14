# While

A `while` loop is used when you want to execute a piece of code repeatedly.

```python
# Ask user for input
number = int(input("Enter a number: "))

product = 2
counter = 1

while counter <= number:
  # Multiply product by itself
  product *= product 
  # Increase counter
  counter = counter+1

print("The product is", product)
```