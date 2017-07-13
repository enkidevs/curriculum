# Benchmarking tools
author: mihaiberq

levels:
    - basic

type: normal

category: feature


---
## Content

Seth then went on talking about benchmarking tools: "One of the downsides of [...] these traditional benchmarks, not real world simulations [...] is that they're not always emblematic of the types of JavaScript that you're writing. [...] The `Octane` benchmark was tuned only to exercise the peak performance of a compiler."

In contradiction with the new direction V8 is going (focusing on all sides of the spectrum rather than maximizing performance), *Octane benchmark* was retired as it has diminishing returns:
 - Synthetic benchmarks usually encourage over-optimizations
 - No longer matches general JavaScript patterns in real-world websites (talking about the wide range of frameworks and libraries)

However, if one thing goes down, the other goes up: Google joined forces with WebKit (the ones who have originally implemented Speedometer) to create `Speedometer 2` and to make it include multiple widely-used frameworks[1].

The new *Speedometer* tests `TodoMVC` implementation for those frameworks and their latest updates. They even refer to it as *"the best in-browser approximation of modern Javascript (, although no benchmark is perfect)"*. You can find it on `browserbench.org`.



---
## Footnotes

[1: Speedometer 2 supported code]
The entire list of supported libraries and frameworks is:
 - React
 - Angular 2
 - Ember
 - Preact
 - VueJS
 - Inferno
 - Webpack
 - Elm
 - Backbone
 - ES2015 code
