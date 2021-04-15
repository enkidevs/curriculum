# Name Error

The `#NAME?` error appears when text in the formula is not recognized.

To fix this, hover over the function with the error to see which parameter of the function produces the error. 

Then edit the cell/s or function and/or remove any unrecognized values.

Example unrecognized value:
`=IF("Stefan" = Stefan, True)`

The above function would produce the `#NAME?` error because we are using an incorrect text input.

The error message would be: `Unknown range name: 'STEFAN'.`

Changing the value `Stefan` to `"Stefan"` would fix the error. 

![unknown-range-error](https://img.enkipro.com/3f4c6708779053981dcf303eea08ce7c.gif)
