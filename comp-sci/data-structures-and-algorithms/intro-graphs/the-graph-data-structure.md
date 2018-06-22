---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know


links:

  - '[Graph theory](https://en.wikipedia.org/wiki/Graph_theory){website}'

parent: the-queue-data-structure

---

# The Graph Data Structure

---
## Content

**Graphs** are a way of representing relationships between pairs of objects. They consist of objects (called *nodes* or *vertices*) and the pairwise connections between them (called *edges*).

Graphs come in two flavors: **directed graphs** (*digraph*) and **undirected graphs**. In a directed graph the edges have a direction, like a one-way street. Conversely, in an undirected graph, the edges have no notion of direction.

This is how an undirected graph is represented:

![undirgraph](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M212%20115c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C242.292%2033.495%20228.138%2025%20212%2025c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22198.873%22%20y%3D%2289%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M212%20275c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C242.292%20193.495%20228.138%20185%20212%20185c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22198.873%22%20y%3D%22249%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M80%20189c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C110.292%20107.495%2096.138%2099%2080%2099c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2266.873%22%20y%3D%22163%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M616%20275c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C646.292%20193.495%20632.138%20185%20616%20185c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22602.873%22%20y%3D%22249%22%3EF%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M526%20115c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C556.292%2033.495%20542.138%2025%20526%2025c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22512.873%22%20y%3D%2289%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M259%2070h222M256%2082l340.625%20106.882M112%20112l54.66-43.73M108%20179l57.493%2046.59M125%20150l365.19-52.883M255%20246l319.96%204.968M212.89%20116v69%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)


And this is a directed graph:
![dirgraph](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M212%20115c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C242.292%2033.495%20228.138%2025%20212%2025c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22198.873%22%20y%3D%2289%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M212%20275c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C242.292%20193.495%20228.138%20185%20212%20185c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22198.873%22%20y%3D%22249%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M80%20189c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C110.292%20107.495%2096.138%2099%2080%2099c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2266.873%22%20y%3D%22163%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M616%20275c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C646.292%20193.495%20632.138%20185%20616%20185c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22602.873%22%20y%3D%22249%22%3EF%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M526%20115c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C556.292%2033.495%20542.138%2025%20526%2025c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22512.873%22%20y%3D%2289%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M256%2063.5l323.647%20134.646M568.524%20196.767l11.123%201.38-8.82-6.92M555%20107l46%2077M592.886%20176.267L601%20184l-2.963-10.81M566%2094l54%2091M568.932%20104.82L566%2094l8.09%207.757M212%20115v68M209%20172.2l3%2010.8%203-10.8M259%20230L487.038%2096.978M479.22%20105.01l7.818-8.032-10.84%202.85M259%20216L484.257%2086.157M269.855%20213.206L259%20216l7.86-7.993M168%20217l-56-38M122.62%20182.582L112%20179l7.252%208.547M114%20113l52-32M158.374%2089.215L166%2081l-10.77%203.105%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

For example, *linked lists* are special a kind of directed graphs.

Graphs can be used to represent friendships on social networks. *Facebook*, for instance, is organized as an *undirected graph* (you appear on each other's friend list), while *Twitter*, is organized as a *directed graph* (you can follow someone without them having to follow you back).

There can be more *directed edges* with the same origin and destination nodes, and more *undirected edges* to have the same end nodes. These are called **parallel edges** or **multiple edges**.

A **self-loop** is an edge for which the 2 nodes coincide.

A graph containing both parallel edges and a self loop is represented below:

![notsimplegraph](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M212%20115c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C242.292%2033.495%20228.138%2025%20212%2025c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22198.873%22%20y%3D%2289%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M212%20275c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C242.292%20193.495%20228.138%20185%20212%20185c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22198.873%22%20y%3D%22249%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M616%20275c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C646.292%20193.495%20632.138%20185%20616%20185c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22602.873%22%20y%3D%22249%22%3EF%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M526%20115c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C556.292%2033.495%20542.138%2025%20526%2025c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22512.873%22%20y%3D%2289%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M259%2070h222M256%2082l340.625%20106.882M255%20246l319.96%204.968%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Cpath%20d%3D%22M258%20235l314%204%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Cpath%20d%3D%22M212.89%20116v69%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Cpath%20d%3D%22M571.388%2069.366c1.056-1.372%202.035-2.83%202.925-4.373%2010.626-18.404%204.634-41.756-13.383-52.158-18.017-10.402-41.236-3.915-51.862%2014.49-.245.424-.482.852-.71%201.283%22%20stroke%3D%22%23FBFAFA%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

We call **simple graph** one that does *not contain self-loops or multiple edges*. The first two graphs are simple.

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

 
