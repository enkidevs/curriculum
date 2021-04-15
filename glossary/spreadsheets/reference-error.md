# Reference Error

The `#REF!` error appears when you have an invalid cell reference.

There are two invalid cell reference errors

1. Circular dependency

This error occurs when you add the cell that contains the formula in your range of cells.

To fix this, exclude the function cell from the range.

![exclude-function-from-range](https://img.enkipro.com/e28a2108f806ad0dca4ed7ee8a2da3a7.gif)

2. Another case when this error occurs is when you delete a cell, column, row, or sheet that is referenced in a formula. Upon deletion, the formula returns the `#REF!` error.
