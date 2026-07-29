# Tensorflow serving

author: stefanoeb

tags:
  - deep
  - workout


category: tips

links:

  - '[Tensorflow serving website](https://www.tensorflow.org/serving/)'

---
## Content

**Tensorflow serving** is a tool written by Google to help developers serve trained tensorflow models in production. It have two variations: The CPU build and the GPU build to use according to the models that you'll use.

The tools is written in C++ and Google uses it into production to serve multiple machine learning models.

Main features include:

* Model versioning
* Loading servables of multiple sources
* Batching requests
