# For & range()

You can use `range()` with a `for..in` loop to cycle through a specified range.

```python
# For every number in the range 1 to 6 (1 included, 6 excluded)
for number in range(1, 6):
  # number to the power of number
  print(number ** number)
```

Which gives the output:
```plain-text
1
4
27
256
3125
```