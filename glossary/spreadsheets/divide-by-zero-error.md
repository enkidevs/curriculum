# Divide by Zero Error

The `#DIV/0!` appears when you try to divide by 0 or an empty cell. 

This error will also appear in functions that convert text to `0` before returning the result.

To fix this, hover over the function with the error to see which parameter of the function produces the error. 

Then edit the cell/s that are empty or have a `0`.

Example:
`A2/B3` where `A2=30` and `B3` is an empty cell.

The above function would produce the `#DIV/0!` error because we are trying to divide by `0`.

The error message would be: `Function DIVIDE parameter 2 cannot be zero.`

Changing the value `B3` to a number would fix this error.
