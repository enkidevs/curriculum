# Splitting data in train and test sets
author: stefanoeb

levels:

  - basic

type: must-know

category: best practice

links:

  - '[link to learn more](https://enki.com)'

---
## Content

When preparing the dataset to **feed a model**, is recommended to split the data between `training` and `testing` sets to accurately identify problems like the **bias-variance tradeoff**.

The `training` set will be used to **train** the learning model, while the `testing` set is reserved only for **scoring** after the model is trained.

In this approach, the `testing` set represents real-world and unseen data to make `cross-validations` between the results of train/test set.

---
## Practice

What set represents future real-world data being input?
???

* test set
* train set
