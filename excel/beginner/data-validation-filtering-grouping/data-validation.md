---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - new
  - workout

type: normal

category: must-know

---

# Data Validation

---
## Content

Excel has a feature called "Data Validation" which you can use to constrain a particular input into a cell.

For instance, you can make a cell be of type `date` and only allow actual date input or a date `after`, `before` or even `between` a certain date.

To open `data validation` you can either go to (Google sheets):

![how-to-open-data-validation](https://img.enkipro.com/8cd2e9b2913a5dc3f348d3b93c90c3ea.png)

or right-click any cell and select `data validation` at the bottom.

The difference between these two ways of opening `data validation` is if you right-click a cell, it will select that cell to be validated. However, if you open it like in the image above, you will have to select the cells on your own.

This will give you a popup window like so:

![data-validation](https://img.enkipro.com/e8e5151a6a2d4745a003e7c1b888ef7f.png)

To select a cell click on `Cell range` and click on a cell. 

To select a range of cells, click on a particular cell and drag towards the cells on which you want to use a validation.

Under "Criteria" there are several options:

![criteria-options](https://img.enkipro.com/ba4bb0f6f2fd08fb155c92ae0365a658.png)

Each option has a different set of sub-options that will appear on the right side after choosing one.

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

To remove a data validation, all you have to do is right-click the cell you want to remove the validation, open `data validation` and click `remove validation`.

Example:

![how-to-remove-gif](https://img.enkipro.com/5942bfe502242b44c2253ac4f6de6b19.gif)

---
## Practice

What is `Data validation`?

`Data Validation` is ???

* a feature in Excel used to constrain a particular input into a cell.
* an external program used to create valid data
* just another name for Analysis
* a feature used to separate different dates and validate them separately
