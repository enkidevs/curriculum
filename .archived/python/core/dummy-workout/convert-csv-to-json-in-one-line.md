---
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

---
# Convert CSV to JSON in one line

---
## Content

JSON and CSV are two of the most common used data storage forms in programming. 

To convert CSV to JSON:
```python
import csv,json
print json.dumps( \
list(csv.reader(open('csv_file.csv'))))
```