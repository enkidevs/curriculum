---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Functions II

---
## Content

What happens in this example is:
1. You define a *function* called **prepare glass**
2. You **pass in** arguments (ingredients). These are necessary for the function to complete
3. You write all the instructions for the robot
4. You **pass out** the result. In this case, it's just the glass.

On the same note we'll write two more functions:

```plain-text
Function prepare mixture
    Pass In: cocktail shaker, ice, 50ml tequila, 25ml lime juice, 20ml triple sec.
    Direct the robot to fill the cocktail shaker with ice.
    Direct the robot to add the tequila, lime juice and triple sec.
    Direct the robot to shake the mixture.
    Pass Out: cocktail shaker with mixture.
Endfunction

Function finish cocktail
    Pass In: cocktail shaker with mixture, glass with salted rim, lime wedge.
    Direct robot to strain mixture from cocktail shaker into glass with salted rim.
    Direct robot to garnish glass with lime wedge.
    Direct robot to serve cocktail.
    Pass Out: nothing.
Endfunction
```

> 💡 The `Pass Out` field represents something that we want to use at a later point. In the `finish cocktail` function, because we instruct the robot to serve the cocktail, we don't pass out anything.
