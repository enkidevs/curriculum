---
author: stefan.stojanovic

levels:
  - beginner
  
aspects:
  - new
    
type: normal

category: must-know

standards:
  javascript.aggregation-pipeline.0: 10
  javascript.aggregation-pipeline.1: 10
  javascript.aggregation-pipeline.2: 10
  javascript.aggregation-pipeline.4: 10
  javascript.aggregation-pipeline.5: 10 

links:
  - '[link to official documentation](https://enki.com)'

---
# Aggregation group 2
---
## Content



If we we're to add any different number like 2,3 or 1.5, 3.6, our sum would sum all values that many times. The `$


---
## Practice

What is the `$skip` aggregation stage used for?

???

Which of the 2 examples below is a valid `$skip` stage?  

???

A: {$limit: 9.9}
B: {$skip: 99}

* To skip a specified number of documents to be aggregated starting from the first
* `B`
* To skip the number of stages the documents will go through
* `A`

---
## Revision

Let's say we have a collection named `games` with 100 documents. Display the 55th and 56th game using aggregation.

```javascript
db.???.aggregate(
    { ??? : 54 },
    { ??? : ??? }
)
```

* `games`
* `$skip`
* `%limit`
* `2`
* `GAMES`
* `58`
* `100`
* `document`