---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Functions III

---
## Content

Your robot is almost ready! The last step is chaining all the functions. You wouldn't want it to prepare the glass after it poured the coktail.

```plain-text
Function make a margarita
    Pass In: prepare glass, prepare mixture, finish cocktail.
    Direct robot to execute prepare glass.
    Direct robot to execute prepare mixture.
    Direct robot to execute finish cocktail.
    Pass Out: nothing.
Endfunction
```

> 💡 You should give your functions explanatory names. A good rule is to use verb-noun combinations (`prepare glass`). If your functions requires two verbs or nouns for its identifier, you should probably split it into separate functions.

![gif-of-spongebob-dusting-off-hands](https://img.enkipro.com/cdf13a221aa155022ba5eb2031e27cde.gif)

"Robot, go **make a margarita**". Between the beeping robot sounds, you notice some splashing. Uh-oh, we didn't instruct the robot to put the cap on the cocktail shaker before shaking.

Instead of searching through all the instruction, you know that the issue is in the `prepare mixture` function:

```plain-text
Function prepare mixture
    Pass In: cocktail shaker, ice, 50ml tequila, 25ml lime juice, 20ml triple sec.
    Direct the robot to fill the cocktail shaker with ice.
    Direct the robot to add the tequila, lime juice and triple sec.
    **Direct robot to put the cap on the cocktail shaker.**
    Direct the robot to shake the mixture.
    Pass Out: cocktail shaker with mixture.
Endfunction
```

Done. You've fixed your first bug 🐛, and can now enjoy the rest of your Saturday with an ice cold margarita. Learning functions couldn't get better!

To recap, functions are useful because:
- they break down big programs into "blocks"
- they increase readability and organization
- they make testing and identifying bugs much easier
