---
author: Stefan-Stojanovic

type: normal

category: must-know

links:
  - >-
    [Matplotlib Modules](https://matplotlib.org/stable/py-modindex.html){documentation}
  - >-
    [Pyplot Module](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.html#module-matplotlib.pyplot){documentation}
  - >-
    [String Formatting](https://thepythonguru.com/python-string-formatting/){documentation}

---

# Visualize Output II

---
## Content

Previously, we have created this basic pie chart:

![plt-pie-output](https://img.enkipro.com/91fd23fddc318cc690ae4cba72b1c809.png)

Let's modify it.

First off, since we are using a dark theme, let's change the text color to white and add some custom labels:
```python
plt.pie(
    [4265,1969], 
    labels=['Movies','TV Shows'],
    textprops={'color':"white"}
)

plt.show()
```

Labels are added through the `labels` parameter while the text color is changed through `textprops`. 

Currently, the chart looks like this:

![labels-and-textprop](https://img.enkipro.com/c8c7197baf90ab37ae3725f318716ace.png)

Next, let's add a title and change its color to white:
```python
plt.title(
    'Movies VS TV in %',
    color="White"
)
```

![labels-and-textprop](https://img.enkipro.com/86633a292c711657c17743768794c63d.png)

So far, the chart has a label, a title, and all of the text set to white.

Next, we can display what percentage of a whole is each portion of the chart. This is done through the `autopct` parameter. 

```python
plt.pie(
    [4265,1969], 
    labels=['Movies','TV Shows'],
    textprops={'color':"white"},
    autopct='%.2f'
)

plt.title(
    'Movies VS TV in %',
    color="White"
)

plt.show()
```

![with-autopct](https://img.enkipro.com/8070c3d3f4bbb725ef7b528ab7487cfa.png)


`autopct` uses string formatting. The value we passed to it is `%.2f`.  

Since we are representing a percentage, we need to use floating-point numbers.

(`%`) is a special character that tells `autopct` to display the value as a percentage up to two decimal points (`.2`) of a floating-point number (`f`).


> We will continue in the next insight.