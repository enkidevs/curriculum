# Bias and variance
author: stefanoeb

levels:

  - basic

type: normal

category: must-know

links:

  - '[Graphical and mathematical approach to bias-variance](http://scott.fortmann-roe.com/docs/BiasVariance.html)'

---
## Content

Considered a dilemma, the `bias-variance tradeoff` is the problem of trying to minimize these two sources of error in machine learning models that prevents them to accurately make predictions.

**Bias**, often referred as `underfitting` is understood by a high difference between the predicted value and the correct one. Models with high bias have a low score on the training set from  predicted values.

They may be caused by randomness in the dataset, or poorly selected features that are simply not able to **describe** the problem.

Example: *trying to predict the weather by baseball game results* - Game results are not related to the weather, so don't matter what model is being used to predict it: the **bias** will be horribly **high**.

**Variance**, on the other hand is often referred by `overfitting` and basically means that the model is **not able** to generalize the problem to data that he never seen before.

This means that despite the **training** score being `good`, when trying to predict *new/unseen* data on the **testing** set it performs `badly`.

The most common cause for this issue is a too complex model, which `memorized` or `mapped` the features to the labels without making a general sense of it.

Example: *using too much features to describe a problem* - Leads to a overly-complex model that does not extract the **causes** very well.

This is called **dilemma** or a **tradeoff** because when trying to minimize one source, the other one tends to maximize.


---
## Practice

Bias means that the model is ??? the problem

* not describing well
* memorizing
* generalizing well

---
## Revision

What is common cause for high `variance` in a model?

* too many features
* lack of training points
* overly simple problem
