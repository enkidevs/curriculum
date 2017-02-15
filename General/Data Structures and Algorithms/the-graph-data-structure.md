# The Graph Data Structure
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

---
## Content

**Graphs** are a way of representing relationships between pairs of objects. They consist of objects (called *nodes* or *vertices*) and the pairwise connections between them (called *edges*).

Graphs come in two flavors: **directed graphs** (*digraph*) and **undirected graphs**. In a directed graph the edges have a direction, like a one-way street. Conversely, in an undirected graph, the edges have no notion of direction.

This is how an undirected graph looks:

![undirgraph.svg](%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20height%3D%22auto%22%20width%3D%22100%25%22%20viewBox%3D%220%200%201052.3622%20744.09448%22%3E%3Ctext%20style%3D%22line-height%3A125%25%22%20x%3D%22547.143%22%20y%3D%22538.076%22%20font-size%3D%2240%22%20font-family%3D%22sans-serif%22%20letter-spacing%3D%220%22%20word-spacing%3D%220%22%20transform%3D%22translate%280%20-308.268%29%22/%3E%3Cg%20transform%3D%22translate%281.43%20-369.696%29%22%20stroke-width%3D%225%22%3E%3Ccircle%20cy%3D%22550.934%22%20cx%3D%22214.286%22%20r%3D%22110%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22/%3E%3Ctext%20transform%3D%22scale%281.1026%20.90695%29%22%20y%3D%22680.678%22%20x%3D%22135.839%22%20style%3D%22line-height%3A125%25%22%20font-size%3D%2273.633%22%20font-family%3D%22sans-serif%22%20letter-spacing%3D%220%22%20word-spacing%3D%220%22%3E%3Ctspan%20style%3D%22-inkscape-font-specification%3A%27Roboto%20Bold%27%22%20y%3D%22680.678%22%20x%3D%22135.839%22%20font-weight%3D%22bold%22%20font-size%3D%22207.093%22%20font-family%3D%22Roboto%22%20fill%3D%22%239a57c1%22%3E5%3C/tspan%3E%3C/text%3E%3C/g%3E%3Cg%20transform%3D%22translate%28-2.857%20-363.982%29%22%3E%3Ccircle%20r%3D%22110%22%20cy%3D%22540.934%22%20cx%3D%22562.857%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22%20stroke-width%3D%225%22/%3E%3Ctext%20transform%3D%22scale%281.1026%20.90695%29%22%20y%3D%22667.461%22%20x%3D%22451.36%22%20style%3D%22line-height%3A125%25%22%20font-size%3D%2273.633%22%20font-family%3D%22sans-serif%22%20letter-spacing%3D%220%22%20word-spacing%3D%220%22%3E%3Ctspan%20style%3D%22-inkscape-font-specification%3A%27Roboto%20Bold%27%22%20y%3D%22667.461%22%20x%3D%22451.36%22%20font-weight%3D%22bold%22%20font-size%3D%22207.093%22%20font-family%3D%22Roboto%22%20fill%3D%22%239a57c1%22%3E4%3C/tspan%3E%3C/text%3E%3C/g%3E%3Cg%20transform%3D%22translate%28-28.57%20-332.553%29%22%20stroke-width%3D%225%22%3E%3Ccircle%20r%3D%22110%22%20cy%3D%22700.934%22%20cx%3D%22885.714%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22/%3E%3Ctext%20transform%3D%22scale%281.1026%20.90695%29%22%20y%3D%22847.026%22%20x%3D%22745.471%22%20style%3D%22line-height%3A125%25%22%20font-size%3D%2273.633%22%20font-family%3D%22sans-serif%22%20letter-spacing%3D%220%22%20word-spacing%3D%220%22%3E%3Ctspan%20style%3D%22-inkscape-font-specification%3A%27Roboto%20Bold%27%22%20y%3D%22847.026%22%20x%3D%22745.471%22%20font-weight%3D%22bold%22%20font-size%3D%22207.093%22%20font-family%3D%22Roboto%22%20fill%3D%22%239a57c1%22%3E3%3C/tspan%3E%3C/text%3E%3C/g%3E%3Cg%20stroke-width%3D%225%22%20transform%3D%22translate%280%20-308.268%29%22%3E%3Ccircle%20r%3D%22110%22%20cy%3D%22882.362%22%20cx%3D%22211.429%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22/%3E%3Ctext%20transform%3D%22scale%281.1026%20.90695%29%22%20y%3D%221045.494%22%20x%3D%22135.223%22%20style%3D%22line-height%3A125%25%22%20font-size%3D%2273.633%22%20font-family%3D%22sans-serif%22%20letter-spacing%3D%220%22%20word-spacing%3D%220%22%20fill%3D%22%239a57c1%22%3E%3Ctspan%20style%3D%22-inkscape-font-specification%3A%27Roboto%20Bold%27%22%20y%3D%221045.494%22%20x%3D%22135.223%22%20font-weight%3D%22bold%22%20font-size%3D%22207.093%22%20font-family%3D%22Roboto%22%3E1%3C/tspan%3E%3C/text%3E%3C/g%3E%3Cg%20transform%3D%22translate%28-11.43%20-313.982%29%22%20stroke-width%3D%225%22%3E%3Ccircle%20cx%3D%22541.429%22%20cy%3D%22890.934%22%20r%3D%22110%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22/%3E%3Ctext%20style%3D%22line-height%3A125%25%22%20x%3D%22433.221%22%20y%3D%221056.52%22%20transform%3D%22scale%281.1026%20.90695%29%22%20font-size%3D%2273.633%22%20font-family%3D%22sans-serif%22%20letter-spacing%3D%220%22%20word-spacing%3D%220%22%3E%3Ctspan%20x%3D%22433.221%22%20y%3D%221056.52%22%20style%3D%22-inkscape-font-specification%3A%27Roboto%20Bold%27%22%20font-weight%3D%22bold%22%20font-size%3D%22207.093%22%20font-family%3D%22Roboto%22%20fill%3D%22%239a57c1%22%3E2%3C/tspan%3E%3C/text%3E%3C/g%3E%3Cpath%20d%3D%22M208.57%20292.666v170M661.43%20215.523l131.427%2062.857M537.064%20471.26l35.872-188.617M321.457%20212.683L535.663%20465.42l211.424-88.758%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22%20stroke-width%3D%225%22/%3E%3C/svg%3E)

And this is a directed graph:

![digraph.svg](%3Csvg%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%201052.3622%20744.09448%22%3E%3Ctext%20style%3D%22line-height%3A125%25%22%20x%3D%22547.14288%22%20y%3D%22538.07648%22%20font-size%3D%2240%22%20font-family%3D%22sans-serif%22%20letter-spacing%3D%220%22%20word-spacing%3D%220%22%20transform%3D%22translate%280%20-308.268%29%22/%3E%3Cg%20transform%3D%22translate%281.43%20-369.696%29%22%20stroke-width%3D%225%22%3E%3Ccircle%20cy%3D%22550.93365%22%20cx%3D%22214.28571%22%20r%3D%22110%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22/%3E%3Ctext%20transform%3D%22scale%281.1026%20.90695%29%22%20y%3D%22680.67822%22%20x%3D%22135.83859%22%20style%3D%22line-height%3A125%25%22%20font-size%3D%2273.63319%22%20font-family%3D%22sans-serif%22%20letter-spacing%3D%220%22%20word-spacing%3D%220%22%3E%3Ctspan%20style%3D%22-inkscape-font-specification%3A%27Roboto%20Bold%27%22%20y%3D%22680.67822%22%20x%3D%22135.83859%22%20font-weight%3D%22bold%22%20font-size%3D%22207.09335%22%20font-family%3D%22Roboto%22%20fill%3D%22%239a57c1%22%3E5%3C/tspan%3E%3C/text%3E%3C/g%3E%3Cg%20transform%3D%22translate%28-2.857%20-363.982%29%22%3E%3Ccircle%20r%3D%22110%22%20cy%3D%22540.93365%22%20cx%3D%22562.85712%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22%20stroke-width%3D%225%22/%3E%3Ctext%20transform%3D%22scale%281.1026%20.90695%29%22%20y%3D%22667.46057%22%20x%3D%22451.35974%22%20style%3D%22line-height%3A125%25%22%20font-size%3D%2273.63319%22%20font-family%3D%22sans-serif%22%20letter-spacing%3D%220%22%20word-spacing%3D%220%22%3E%3Ctspan%20style%3D%22-inkscape-font-specification%3A%27Roboto%20Bold%27%22%20y%3D%22667.46057%22%20x%3D%22451.35974%22%20font-weight%3D%22bold%22%20font-size%3D%22207.09335%22%20font-family%3D%22Roboto%22%20fill%3D%22%239a57c1%22%3E4%3C/tspan%3E%3C/text%3E%3C/g%3E%3Cg%20transform%3D%22translate%28-28.57%20-332.553%29%22%20stroke-width%3D%225%22%3E%3Ccircle%20r%3D%22110%22%20cy%3D%22700.93365%22%20cx%3D%22885.71423%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22/%3E%3Ctext%20transform%3D%22scale%281.1026%20.90695%29%22%20y%3D%22847.02637%22%20x%3D%22745.47064%22%20style%3D%22line-height%3A125%25%22%20font-size%3D%2273.63319%22%20font-family%3D%22sans-serif%22%20letter-spacing%3D%220%22%20word-spacing%3D%220%22%3E%3Ctspan%20style%3D%22-inkscape-font-specification%3A%27Roboto%20Bold%27%22%20y%3D%22847.02637%22%20x%3D%22745.47064%22%20font-weight%3D%22bold%22%20font-size%3D%22207.09335%22%20font-family%3D%22Roboto%22%20fill%3D%22%239a57c1%22%3E3%3C/tspan%3E%3C/text%3E%3C/g%3E%3Cg%20stroke-width%3D%225%22%20transform%3D%22translate%280%20-308.268%29%22%3E%3Ccircle%20r%3D%22110%22%20cy%3D%22882.36218%22%20cx%3D%22211.42857%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22/%3E%3Ctext%20transform%3D%22scale%281.1026%20.90695%29%22%20y%3D%221045.4938%22%20x%3D%22135.22296%22%20style%3D%22line-height%3A125%25%22%20font-size%3D%2273.63319%22%20font-family%3D%22sans-serif%22%20letter-spacing%3D%220%22%20word-spacing%3D%220%22%20fill%3D%22%239a57c1%22%3E%3Ctspan%20style%3D%22-inkscape-font-specification%3A%27Roboto%20Bold%27%22%20y%3D%221045.4938%22%20x%3D%22135.22296%22%20font-weight%3D%22bold%22%20font-size%3D%22207.09335%22%20font-family%3D%22Roboto%22%3E1%3C/tspan%3E%3C/text%3E%3C/g%3E%3Cg%20transform%3D%22translate%28-11.43%20-313.982%29%22%20stroke-width%3D%225%22%3E%3Ccircle%20cx%3D%22541.42859%22%20cy%3D%22890.93359%22%20r%3D%22110%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22/%3E%3Ctext%20style%3D%22line-height%3A125%25%22%20x%3D%22433.22076%22%20y%3D%221056.5198%22%20transform%3D%22scale%281.1026%20.90695%29%22%20font-size%3D%2273.63319%22%20font-family%3D%22sans-serif%22%20letter-spacing%3D%220%22%20word-spacing%3D%220%22%3E%3Ctspan%20x%3D%22433.22076%22%20y%3D%221056.5198%22%20style%3D%22-inkscape-font-specification%3A%27Roboto%20Bold%27%22%20font-weight%3D%22bold%22%20font-size%3D%22207.09335%22%20font-family%3D%22Roboto%22%20fill%3D%22%239a57c1%22%3E2%3C/tspan%3E%3C/text%3E%3C/g%3E%3Cpath%20d%3D%22M225.7365%20465.49257l269.95557-198.511%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22%20stroke-width%3D%225.076%22/%3E%3Cpath%20d%3D%22M231.4214%20462.6896l514.30006-107.1908%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22%20stroke-width%3D%224.96818%22/%3E%3Cpath%20d%3D%22M614.2857%20506.95135l138.57144-97.14286%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22%20stroke-width%3D%225%22/%3E%3Cpath%20d%3D%22M747.10584%20379.8646L591.4656%20482.60953%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22%20stroke-width%3D%225.15066%22/%3E%3Cpath%20d%3D%22M328.57143%20169.8085h118.57143M343.0056%20183.4551l-17.55328-14.2157%2016.7429-13.06507M473.82707%20266.48608l22.5807.5622-5.3021%2020.56474M726.11285%20344.59466l19.52637%2011.35454-14.54035%2015.47897M610.7059%20488.2823l-22.1226-4.56008%208.867-19.29756M732.63687%20409.1249l22.58578.29502-5.05842%2020.626%22%20fill%3D%22none%22%20stroke%3D%22%239a57c1%22%20stroke-width%3D%225%22/%3E%3C/svg%3E)

For example, *trees* and *linked lists* are special kinds of directed graphs.
You can also use graphs to represent friendship on social networks.

*Facebook*, for instance, is organized as an *undirected graph* (you appear on each other's friend list), while *Twitter*, is organized as a *directed graph* (you can follow someone without them having to follow you back).

There can be more *directed edges* with the same origin and destination nodes, and more *undirected edges* to have the same end nodes. These are called **parallel edges** or **multiple edges**.

A **self-loop** is an edge for which the 2 nodes coincide.

We call **simple graph** one that does *not contain self-loops or multiple edges*.


---
## Practice

A graph that represents flight routes between cities should be

 ???.

* directed
* undirected

---
## Revision

What's the name for an edge in a graph that connects a node with itself?

???
* self-loop
* simple edge
* circular edge
* self-connection
