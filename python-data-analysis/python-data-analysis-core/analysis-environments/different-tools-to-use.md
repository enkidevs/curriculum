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

# Python Coding Tools

---
## Content

Before we start coding, we have to decide which tool we're going to use.

One important category split between most tools is whether they're accessible offline or online.

The main difference is that online tools are immediately available (assuming you have an internet connection) and usually come with all the necessary libraries[1] included (no need to install anything).

Offline tools need to be installed first, including any library you might need, but can afterwards be used without internet.

> 💡 A popular kind of Python coding tool (available both offline and online) is called a *notebook*.

Notebooks offer interactive Python environments that can combine code with other visual elements such as text, charts, and images.

One offline tool that lets you use notebooks is VScode[2]

As for online tools, here're two:

| Name         | Unique Feature                      |
|--------------|-------------------------------------|
| Google Colab | Real-time collaboration             |
| Cocalc       | Collaboration based on edit history |

For some in-depth information on these tools and more, check out the **Learn More** section.

> 💡 We mentioned in the first insight that we'll be using Jupyter Lab in this course. All of our examples will be available online. If you prefer to run Jupyter Lab offline, here's how you can install it using `pip`[3] or **anaconda**[4].

> 💡 All of the tools mentioned above have support for Jupyter notebooks. It doesn't matter which tool you choose to work on, you can still follow along.

---

## Footnotes
[1: Libraries]
Think of libraries as external programs you can use to quickly get some functionality you don't want to write by yourself.

For example, if you wanted to draw plots and charts, you'd typically use an existing charting library instead of writting all the code for graphical and spatial calculations yourself.

Most online Python environments come with popular libraries pre-installed.

[2: VSCode]
VScode is an advanced text editor with extensions that let you edit, modify, delete, create and run notebooks.

[3:pip]
pip is a package manager for Python.

> 💡 When installing through `pip` you first have to make sure `pip` is upgraded to the latest version.

To upgrade:
```python
# use pip to upgrade itself :)
pip install --upgrade pip
```

If you don't have pip, download the latest python installer from the [official website](https://www.python.org/downloads/) and make sure the checkbox for `pip` is ticked on.

> 💡 Along with Jupyter we'll also install iPython.

```python
pip install --upgrade jupyter ipython
```

To run Jupyter, type this in your terminal:
```sh
jupyter-lab
```

[4:Anaconda]
Anaconda is a package and environment manager for Python and R. It provides a graphical user interface and a terminal.

To download Anaconda visit [their official website](https://www.anaconda.com/products/individual) link.

> 💡 Along with Jupyter we'll also install iPython.

Installing through Anaconda:
```sh
conda install jupyter ipython
```

To run Jupyter, type this in your terminal:
```sh
jupyter-lab
```
