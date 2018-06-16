---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know



parent: kruskals-algorithm

---

# Kruskal's Algorithm Iteration

---
## Content

Consider the following weighted graph:

![kinitial](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20550%20340%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22130%22%20cy%3D%2250%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22114.997559%22%20y%3D%2269%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%2250%22%20cy%3D%22210%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2234.9975586%22%20y%3D%22229%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22320%22%20cy%3D%22290%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22304.997559%22%20y%3D%22309%22%3ED%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22500%22%20cy%3D%22240%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22484.997559%22%20y%3D%22259%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22430%22%20cy%3D%2250%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22414.997559%22%20y%3D%2269%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M102%2079l-52%2091M170%2050h220M78%20238l214%2023M91%20211L402%2079m-81%20172L431%2090m0%200l70%20110M158%2078l314%20134m-124%2050l112-22%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2260.4987793%22%20y%3D%22118%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22272.498779%22%20y%3D%2243%22%3E7%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22159.497559%22%20y%3D%22273%22%3E10%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22402.498779%22%20y%3D%22273%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22155.498779%22%20y%3D%22171%22%3E9%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22470.498779%22%20y%3D%22142%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22408.498779%22%20y%3D%22142%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22240.497559%22%20y%3D%22110%22%3E20%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

In order to apply the algorithm, we have to sort the edges by weight. Doing that yields the following ordered **(edge, weight)** pairs:
```text
BC - 2, CD - 5, AE - 5
BD - 6, AB - 7, BE - 9
DE - 10, AC - 20
```
The next step is to "extract" the vertices from the initial graph and connect them. The first two nodes to be connected are **B** and **C**, by an edge of weight 2:

![k1](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20550%20340%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22130%22%20cy%3D%2250%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22114.997559%22%20y%3D%2269%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%2250%22%20cy%3D%22210%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2234.9975586%22%20y%3D%22229%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22320%22%20cy%3D%22290%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22304.997559%22%20y%3D%22309%22%3ED%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22500%22%20cy%3D%22240%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22484.997559%22%20y%3D%22259%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22430%22%20cy%3D%2250%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22414.997559%22%20y%3D%2269%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M431%2090l70%20110%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22470.498779%22%20y%3D%22142%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

We continue with picking up edges and connecting the other nodes:

![k2](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20550%20340%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22130%22%20cy%3D%2250%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22114.997559%22%20y%3D%2269%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%2250%22%20cy%3D%22210%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2234.9975586%22%20y%3D%22229%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22320%22%20cy%3D%22290%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22304.997559%22%20y%3D%22309%22%3ED%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22500%22%20cy%3D%22240%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22484.997559%22%20y%3D%22259%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22430%22%20cy%3D%2250%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22414.997559%22%20y%3D%2269%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M431%2090l70%20110%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22470.498779%22%20y%3D%22142%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M348%20262l112-22%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22402.498779%22%20y%3D%22273%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M102%2079l-52%2091%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2260.4987793%22%20y%3D%22118%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

So far, so good. The next edge in line is **BD**:

![k3](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20550%20340%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22130%22%20cy%3D%2250%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22114.997559%22%20y%3D%2269%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%2250%22%20cy%3D%22210%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2234.9975586%22%20y%3D%22229%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22320%22%20cy%3D%22290%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22304.997559%22%20y%3D%22309%22%3ED%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22500%22%20cy%3D%22240%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22484.997559%22%20y%3D%22259%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22430%22%20cy%3D%2250%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22414.997559%22%20y%3D%2269%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M431%2090l70%20110%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22470.498779%22%20y%3D%22142%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22340.498779%22%20y%3D%22170%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M348%20262l112-22%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22402.498779%22%20y%3D%22273%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M102%2079l-52%2091%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2260.4987793%22%20y%3D%22118%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M321%20250l80-172%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Not exactly what we've been looking for. In order for a subgraph to be a tree, it must have **no cycles** - yet we got one, so **BD** is skipped. The algorithm will go through each edge in the sorted edge list until a single connected component remains. You can find the minimum spanning tree below:

![kfinal](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20550%20340%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22130%22%20cy%3D%2250%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22114.997559%22%20y%3D%2269%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%2250%22%20cy%3D%22210%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2234.9975586%22%20y%3D%22229%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22320%22%20cy%3D%22290%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22304.997559%22%20y%3D%22309%22%3ED%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22500%22%20cy%3D%22240%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22484.997559%22%20y%3D%22259%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ccircle%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20cx%3D%22430%22%20cy%3D%2250%22%20r%3D%2240%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22414.997559%22%20y%3D%2269%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M102%2079l-52%2091M170%2050h220m41%2040l70%20110m-153%2062l112-22%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2260.4987793%22%20y%3D%22118%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22272.498779%22%20y%3D%2243%22%3E7%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22402.498779%22%20y%3D%22273%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22470.498779%22%20y%3D%22142%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

---
## Practice

Is the following graph a valid one on which to apply Kruskal's algorithm?
```text
           5
     A   C -- D
   3/         |2
  B      F -- E
           6
???
```


* No
* Yes

---
## Revision

In order for the Kruskal's algorithm to work, the graph should be

???.


* weighted
* directed
* acyclic
* disconnected

 
