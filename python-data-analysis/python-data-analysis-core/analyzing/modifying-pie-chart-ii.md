---
author: Stefan-Stojanovic

type: normal

category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Visualize Output III

---
## Content

So far, we modified our pie chart using this code[1]. The output looks like this:

![with-autopct](https://img.enkipro.com/8070c3d3f4bbb725ef7b528ab7487cfa.png)

Another step we could do to even better visualize each portion of the chart is to separate them. This is done through the `explode` parameter.

```py
plt.title(
    'Movies VS TV in %', 
    color="White"
)

plt.pie(
    [4265,1969],
    labels=['Movies','TV Shows'],
    textprops={"color": "white"},
    autopct="%.2f",
    explode=(0, 0.1)
)

plt.show()
```

The output looks like this:

![pie-chart-percentage](https://img.enkipro.com/d39c93873479e577b35fd11e786c38b1.png)

`explode` has the same number of parameters as there are slices of the chart. 

If our chart had 4 slices, and we wanted to only separate the 3rd one, we would write:
```python
explode =(0,0,0.1,0)
```

The number `0` represents no change. Positive values move portions of the chart away from the center. Whereas negative values move them towards the center.

If we used a larger value like `1`, the chart would look like this:

![explode-1](https://img.enkipro.com/c14ddb84d4b30b98b3103852cb8474c2.png)

Whereas if we used a negative value like `-1` it would look like this:

![explode-negative-1](https://img.enkipro.com/8b1661eeaee31d4493725f6472e49eb8.png)


---

## Practice

Fill in the gaps to create a pie chart that has its third slice slightly separated from the chart. Don't forget to show the plot afterward.

```python
data = [100, 150, 200]
labels = 'Milk','Coffee','Tea'

plt.pie(
    ???,
    ???=labels
    ???=???,
    autopct="%.f",
)

plt.title('Drinks left')
???
```


- data
- labels
- explode
- `(0, 0, 0.1)`
- plt.show()
- plt.display()
- `(0.1, 0.1, 0)`
- separate

---

## Revision

Add the pie chart parameter name to its definition.

```python
??? - Offset a portion of the chart.
??? - Mark the labels of each portion.
??? - Add numerical representation in percentage. 
```

- explode
- labels
- autopct
- mark
- wedge


---
## Footnotes
[1: Previous Pie Chart]

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
