---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know


links:

  - '[Big O vs Big Theta](http://stackoverflow.com/questions/471199/what-is-the-difference-between-%CE%98n-and-on){website}'

parent: approximating-memory-and-time-required-by-data-types

---

# Approximation methods

---
## Content

In the last insight, we briefly introduced the `Big-O` notation. However, there are some other approximations used besides it: `Little-o`, `Big-Theta(Θ)` and `Big-Omega(Ω)`.

Before any of that, let's get back to the Big-O notation for a moment. We defined it as an upper bound function, in order to compute resources needed for the worst-case scenario of a data type or algorithm.

Formally, a function `g` is the *Big-O* of a function `f` if there is a constant `c` and a starting index `n'` for which `f(n)<=c⋅g(n)`, and `n>=n'`[1]. Informally, **f** is bounded **above** by a constant multiple of **g**:

![on](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20500%20250%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M466.997734%20238H16V135.499592s28.59326%206.366485%2035.9998191%206.366485c36.9998141-.636648%2082.3354489-4.790482%2097.9995079-7.639782%206.999964-1.273297%2030.999844-4.456539%2043.999779-6.366485%2012.999934-1.909945%2011.999939-2.546594%2033.999829-2.546594%2021.999889.000001%2028.101689-17.117549%2051.999738-24.192643%2010.504344-3.1098445%2036.975034-8.3301268%2062.999684-10.1863753%2026.538443-1.8928957%2052.61475-.3874914%2060.999693%200%2064.366054%202.9745331%2062.999684%2011.2844203%2062.999684%2011.2844203%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M466.997734%20238H16V135.499592s28.59326%206.366485%2035.9998191%206.366485c36.9998141-.636648%2082.3354489-4.790482%2097.9995079-7.639782%206.999964-1.273297%2030.999844-4.456539%2043.999779-6.366485%2012.999934-1.909945%2011.999939-2.546594%2033.999829-2.546594%2021.999889.000001%2028.101689-17.117549%2051.999738-24.192643%2010.504344-3.1098445%2036.975034-8.3301268%2062.999684-10.1863753%2026.538443-1.8928957%2052.61475-.3874914%2060.999693%200%2064.366054%202.9745331%2062.999684%2011.2844203%2062.999684%2011.2844203%22%20stroke-opacity%3D%22.6%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M15%20238h470m-10.8%203l10.8-3-10.8-3%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M17%20136s1.9955654-44.9999994%2047.8935698-21c45.8980042%2023.999999%2021.9512196%2062.999999%2073.8359202%2056%2051.884701-6.999999%20216.518847%2031.999999%20246.452328-40C415.115299%2059.0000013%20434.073171%20119%20467%20114%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M49%2041h21.023796M49%2076h21.023796%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%224%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2276.4890137%22%20y%3D%2248%22%3Ef%28n%29%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2276.4824219%22%20y%3D%2283%22%3Ec%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2291.4848633%22%20y%3D%2283%22%20font-family%3D%22AppleSymbols%2C%20Apple%20Symbols%22%20font-weight%3D%22normal%22%3E%E2%8B%85%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22102.507812%22%20y%3D%2283%22%3Eg%28n%29%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill-opacity%3D%22.6%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2276.4824219%22%20y%3D%2283%22%3Ec%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2291.4848633%22%20y%3D%2283%22%20font-family%3D%22AppleSymbols%2C%20Apple%20Symbols%22%20font-weight%3D%22normal%22%3E%E2%8B%85%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22102.507812%22%20y%3D%2283%22%3Eg%28n%29%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M49%2076h21.023796%22%20stroke-opacity%3D%22.6%22%20stroke%3D%22currentColor%22%20stroke-width%3D%224%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2290.4975586%22%20y%3D%22134%22%3En%E2%80%99%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22473.498779%22%20y%3D%22232%22%3En%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M16%20238V13m3%2010.8L16%2013l-3%2010.8%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

It is easy to find a function which *grows much faster* than another, but that is not the point. In order for *Big-O* to be relevant, the function's graph must be above the one's we are looking to bound, but, at the same time, it must be as close as possible.

`Big-Omega`, or `Big-Ω`, represents the **lower bound** of a function. Using the same notations as before, we can say that *g(n) is Ω(f(n))*, or that `f(n)>=c⋅g(n)`, for any `n>=n'`:

![omega](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20500%20250%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M15%20238h470m-10.8%203l10.8-3-10.8-3%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M16%20103.707595s1.9955654-44.9999996%2047.8935698-21.0000002C109.791574%20106.707594%2085.8447894%20145.707594%20137.72949%20138.707595c51.884701-6.999999%20216.518847%2031.999999%20246.452328-40.0000002%2029.933481-71.9999988%2048.891353-12.0000001%2081.818182-17%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M57%2022h21.023796M57%2057h21.023796%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%224%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2284.4890137%22%20y%3D%2229%22%3Ef%28n%29%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2284.4824219%22%20y%3D%2264%22%3Ec%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2299.4848633%22%20y%3D%2264%22%20font-family%3D%22AppleSymbols%2C%20Apple%20Symbols%22%20font-weight%3D%22normal%22%3E%E2%8B%85%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22110.507812%22%20y%3D%2264%22%3Eg%28n%29%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill-opacity%3D%22.6%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2284.4824219%22%20y%3D%2264%22%3Ec%3C%2Ftspan%3E%20%3Ctspan%20x%3D%2299.4848633%22%20y%3D%2264%22%20font-family%3D%22AppleSymbols%2C%20Apple%20Symbols%22%20font-weight%3D%22normal%22%3E%E2%8B%85%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22110.507812%22%20y%3D%2264%22%3Eg%28n%29%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M57%2057h21.023796%22%20stroke-opacity%3D%22.6%22%20stroke%3D%22currentColor%22%20stroke-width%3D%224%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22473.498779%22%20y%3D%22232%22%3En%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M16%20152.607698c63.7168142-7.169297%20243.915929%2051.209261%20450-16.386964%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M16%20152.607698c63.7168142-7.169297%20243.915929%2051.209261%20450-16.386964%22%20stroke-opacity%3D%22.6%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M16%20238V13m3%2010.8L16%2013l-3%2010.8%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

`Big-Theta`, or `Big-Θ`,  describes the **exact bound** of the function. We can express *g(n) is Θ(f(n))* as `g(n) is Ω(f(n))` and `g(n) is O(f(n))`[2], for every `n>=n'`. In other words, the *Big-Theta function* times `constant1` is inferior to *f(n)* and the same *Big-Theta function* times `constant2` is superior to *f(n)*:

![theta](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20500%20250%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M15%20238h470m-10.8%203l10.8-3-10.8-3%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M57%2022h21.023796M57%2057h21.023796%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%224%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2284.4890137%22%20y%3D%2229%22%3Ef%28n%29%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M215%2021h21.023796%22%20stroke%3D%22%23000%22%20stroke-width%3D%224%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23000%22%3E%3Ctspan%20x%3D%22242.481201%22%20y%3D%2227%22%3Ec2%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22272.486084%22%20y%3D%2227%22%20font-family%3D%22AppleSymbols%2C%20Apple%20Symbols%22%20font-weight%3D%22normal%22%3E%E2%8B%85%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22283.509033%22%20y%3D%2227%22%3Eg%28n%29%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M215%2021h21.023796%22%20stroke-opacity%3D%22.5%22%20stroke%3D%22currentColor%22%20stroke-width%3D%224%22%2F%3E%3Ctext%20opacity%3D%22.50472248%22%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22242.481201%22%20y%3D%2227%22%3Ec2%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22272.486084%22%20y%3D%2227%22%20font-family%3D%22AppleSymbols%2C%20Apple%20Symbols%22%20font-weight%3D%22normal%22%3E%E2%8B%85%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22283.509033%22%20y%3D%2227%22%3Eg%28n%29%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2284.4812012%22%20y%3D%2265%22%3Ec1%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22114.486084%22%20y%3D%2265%22%20font-family%3D%22AppleSymbols%2C%20Apple%20Symbols%22%20font-weight%3D%22normal%22%3E%E2%8B%85%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22125.509033%22%20y%3D%2265%22%3Eg%28n%29%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill-opacity%3D%22.6%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2284.4812012%22%20y%3D%2265%22%3Ec1%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22114.486084%22%20y%3D%2265%22%20font-family%3D%22AppleSymbols%2C%20Apple%20Symbols%22%20font-weight%3D%22normal%22%3E%E2%8B%85%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22125.509033%22%20y%3D%2265%22%3Eg%28n%29%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M17%20114s2%2011%2036%2011c10.5027906%200%2066.19446-1.174035%20121-11%2038.95874-6.984827%2090.737504%2014.970639%20132%206%2039.348142-8.55445%2055-50.000001%2093-65.0000004%2038-14.9999994%2066-4.9999995%2066-4.9999995%22%20stroke%3D%22%23000%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M17%20114s2%2011%2036%2011c10.5027906%200%2066.19446-1.174035%20121-11%2038.95874-6.984827%2090.737504%2014.970639%20132%206%2039.348142-8.55445%2055-50.000001%2093-65.0000004%2038-14.9999994%2066-4.9999995%2066-4.9999995%22%20stroke-opacity%3D%22.6%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M57%2057h21.023796%22%20stroke-opacity%3D%22.6%22%20stroke%3D%22currentColor%22%20stroke-width%3D%224%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22473.498779%22%20y%3D%22232%22%3En%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M16%20152.607698c63.7168142-7.169297%20243.915929%2051.209261%20450-16.386964%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M16%20152.607698c63.7168142-7.169297%20243.915929%2051.209261%20450-16.386964%22%20stroke-opacity%3D%22.6%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M16%20103.707595s1.9955654-44.9999996%2047.8935698-21.0000002C109.791574%20106.707594%2085.8447894%20145.707594%20137.72949%20138.707595c51.884701-6.999999%20216.518847%2031.999999%20246.452328-40.0000002%2029.933481-71.9999988%2048.891353-12.0000001%2081.818182-17%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M16%20238V13m3%2010.8L16%2013l-3%2010.8%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The last function, `little-o`, satisfies `f(n)<c⋅g(n)`, for every `n>=n'`. In other words, `g(n) is o(f(n))` if `g(n) is O(f(n))` **and not** `Θ(f(n))`. We could say that *Big-O* is to *little-o* what **<=** is to **<**.

---
## Practice

Which bound is defined as:
```text
g(n) is O(f(n))
and
g(n) is not Θ(f(n))
```
???

* Little-o
* Big-O
* Big-Theta
* Big-Omega

---
## Revision

If a function is both Big-O and Big-Omega, it is called

???

* Big-Theta
* Little-O
* Middle bound
* Big-O

---
## Footnotes
[1:Big O]
Consider this equation:
```text
nˆ3 >= 3nˆ2 + 10n,
true for any n >= 5
```
In this case:
```text
f(n) = 3nˆ2 + 10n
g(n) = nˆ3
c = 1
n' = 5
```

[2:Big Theta]
Here, the following axiom is used:
```text
if a>=b and b>=a, then a=b.
```
 
