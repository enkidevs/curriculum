---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction
  - workout

type: normal

category: must-know

---

# Data Validation

---
## Content

With spreadsheets, you might want to limit the type of data that can be inserted in a cell. This can be achieved by using data validation.

For instance, you can make a cell be of type `date` and only allow actual date input. You can even restrict the data further and only accept a date `after`, `before` or `between`.

To open `Data validation` you can go to `Data` in the toolbar:

![how-to-open-data-validation](https://img.enkipro.com/8cd2e9b2913a5dc3f348d3b93c90c3ea.png)

Another option is right-clicking any cell and selecting `Data validation` at the bottom.

This will give you a popup window like so:

![data-validation](https://img.enkipro.com/e8e5151a6a2d4745a003e7c1b888ef7f.png)

To select a cell click on `Cell range` followed by clicking (or clicking and dragging) on the cells of interest.

Under `Criteria` there are several options you can choose from:

![criteria-options](https://img.enkipro.com/ba4bb0f6f2fd08fb155c92ae0365a658.png)

Depending on your selection, a different subset of options that will appear on the right side[1].

To remove a data validation, all you have to do is right-click the cell you want to remove the validation, open `data validation` and click `remove validation`.

![how-to-remove-gif](https://img.enkipro.com/5942bfe502242b44c2253ac4f6de6b19.gif)

---
## Practice

`Data Validation` is ???

* a feature used to constrain a particular input into a cell.
* an external program used to create valid data.
* just another name for analysis.
* a feature used to separate different dates and validate them separately.

---
## Footnotes

[1:Example]

We are going to use the `Date` validation for our example, which will give us these options:

![date-criteria](https://img.enkipro.com/67f528223b01d5825b9e36d52a60511f.png)

Next, we are going to use the date `between` option, which will give us these 2 fields to input the desired date.

![two-dates-image](https://img.enkipro.com/97309a2b386f0f95a331dceba520ca83.png)

Let's say we put a date between 1/2000 and 1/2010.

The `On invalid` radio button is used to determine if we should reject the input or just show a warning that the input is wrong.

If you choose "show a warning" the cell will display a red triangle at the top right corner of the cell and display a message.
If you choose "reject input", upon trying to enter a wrong input, a window will pop up and give you an error message.

The message displayed depends on the `Appearance` checkbox.

The `Appearance` checkbox is used to give a "hint" about the validation required and is auto-generated depending on the validation set.
 
If the `Appearance` checkbox is ticked, the `reject input` will display what is in the `Appearance` tab.

Whereas if it is not selected, it will display this message:
`The data you entered in cell D11 violates the data validation rules set on this cell.`

The `D11` is the cell we chose to validate and this part of the message is changed depending on the cell.

In our example, we have selected a `date` `between` `1/2000` and `1/2010` with `reject input` and an `appearance` message in the field `D11`.

Now we are going to write `Input a date between 1/2000 and 1/2010:` in a cell left of `D11` to tell users what to input.

Now that our data validation is done, this is how our cell looks like when we hover over it:
![image-of-appearance](https://img.enkipro.com/2ecbd3b0dbdbad4fa6eb4f318963123a.png)

How it looks when there is a wrong input:
![image-of-rejected-input](https://img.enkipro.com/6f9321ee5bb2fa4e89c8816a334ff61a.png)