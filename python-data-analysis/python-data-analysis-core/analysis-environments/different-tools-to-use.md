---
author: Stefan-Stojanovic

type: normal

category: must-know

links:
 - '[Google colab](https://colab.research.google.com/notebooks/basic_features_overview.ipynb#scrollTo=JyG45Qk3qQLS){documentation}'
 - '[VScode Jupyter Notebooks](https://code.visualstudio.com/docs/python/jupyter-support){website}'
 - '[Spyder Notebook](https://github.com/spyder-ide/spyder-notebook){documentation}'
 - '[Binder](https://mybinder.org/){website}'
 - '[Jupyter.org](https://jupyter.org/){website}'
 - '[Cocalc](https://cocalc.com/){website}'


---

# Different Tools for Coding in Python

---
## Content

Before we start coding, we have to decide which tool we are going to use.

> 💡 We mentioned in the first insight that we will be using Jupyter Lab in this course. However, there are other alternatives.

First off, the main difference between an offline versus an online tool is that online tools do not require installation and usually already have all the necessary libraries readily available.

Offline tools, on the other hand, need to be installed first. Also, any library you might want to use has to be installed as well.

> 💡 All offline and online *notebook* tools are based on Jupyter notebooks.

> 💡 Jupyter Lab, is the newest version of Jupyter Notebooks.

Since we will be using Jupyter Lab in our examples, here is how you can install it through `pip`[1] or **anaconda**[2].

Another offline tool you can use is VScode.

VScode is an advanced text editor. It has extensions you can download to edit, modify, delete, create and run notebooks.

As for online tools, here are two:

| Name         | Unique Feature                      |
|--------------|-------------------------------------|
| Google Colab | Real-time collaboration             |
| Cocalc       | Collaboration based on edit history |

These two are only some of the tools you can use to create, run, modify a jupyter notebook.

For some in-depth information on these tools and more, check out the **Learn More** section.

> 💡 All of the mentioned tools are based on or have support for Jupyter notebooks. Meaning you can work with any of the mentioned tools and transfer your work between them. 

It is up to you to decide which tool you want to use.

---

## Footnotes
[1:pip]
pip is a package manager for Python.

> 💡 When installing through `pip` you first have to make sure `pip` is upgraded to the latest version.

To upgrade:
```python
pip install --upgrade pip
```

If you don't have pip, download the latest python installer from the [official website](https://www.python.org/downloads/) and make sure the checkbox for `pip` is ticked on.

> 💡 Along with Jupyter we will also install iPython.

Then you can install it with this command:
```python
pip install --upgrade jupyter ipython
```

To run Jupyter type this in your terminal:
```sh
jupyter-lab
```

[2:Anaconda]
Anaconda is a package and environment manager for Python and R. It provides a graphical user interface and a terminal.

To download Anaconda visit [their official website](https://www.anaconda.com/products/individual) link.

> 💡 Along with Jupyter we will also install iPython.

Installing through Anaconda:
```sh
conda install jupyter ipython
```

To run Jupyter type this in your terminal:
```sh
jupyter-lab
```