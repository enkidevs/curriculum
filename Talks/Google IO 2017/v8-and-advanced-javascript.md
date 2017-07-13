# V8 Updates and Node Integration
author: mihaiberq

levels:
    - basic

type: normal

category: feature

links:

    - >-
        [Talk](https://www.youtube.com/watch?v=EdFDJANJJLs){website}
---
## Content

This talk given by Seth Thompson, product manager on the V8 team and Chrome. It focuses on 5 main points:
 - optimizations made to the JIT (just-in-time) compiler of V8
 - benchmarking tools
 - parity between ES2015+ features and their transpiled versions.
 - V8 and Node integration (with Node apps debugged in the Chrome's DevTools)
 - WebAssembly

### V8's TurboFan and Ignition Interpreter

As Seth states in the talk, JavaScript engines have to be optimized and to optimize code for different platforms, with different memory capacity: from low-end Android devices, to Desktop devices with more than enough memory. On top of that, he says, there's another constraint to have in mind: the time required by the browser from the moment it receives the JavaScript code to the moment it is run.

Below, you can find the scales he used in his talk:
```
# probably an svg
Fast startup         Peak Performance
   |-----------------------|

Low memory        Max Optimization
   |-----------------------|
```

The trade-off between a fast startup and peak performance is the optimization made by the compiler to the JavaScript code. The example he gives is a function called over and over again, which, in case it is optimized from the beginning (slower start), the program runs faster. Conversely, little to no optimizations means the compiler has to do more overhead work for each iteration:
```javascript
for(i = 1; i < 100000; ++i) {
  foo(i);
}
```

Usually, optimization means memory consumption (more optimization paths that have to be followed). Optimization has to be done depending on the context: the device it's running on, whether it's running on the server or client side or how much memory there is. These are the problems Google looks to solve with the introduction of `TurboFan` and `Ignition Interpreter`.

*TurboFan*, an optimizing compiler, was built for extensibility and full language support (we're probably looking at a long shelf-life), fewer performance cliffs and as a backend for WebAssembly (which was also the focus of the later part of the talk).

*Ignition Interpreter* was made to have a small memory footprint and provide faster startup of web pages.

Using a mixture of both and of heuristics, Chrome can now decide what to focus on (speed, performance, low memory consumption), depending on the device and on the chance that a code will be reused (interpreted once vs necessity for optimization).

Both *TurboFan* and *Ignition Interpreter* are under the hood additions, that you won't necessarily work directly with. However, they will speed up the compilation of the code and the code itself in Chrome (they claim that some of the builtins will perform 4x faster). Over the last year, the V8 optimizations produced a *20-35% performance increase* when benchmarked against `Speedometer`.

The changes to the V8 engines are live in **Chrome Canary**.
