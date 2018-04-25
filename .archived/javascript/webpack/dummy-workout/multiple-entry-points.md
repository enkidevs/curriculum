---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

links:

  - >-
    [survivejs.com](http://survivejs.com/webpack/multiple-entry-points/){website}

---
# Multiple Entry Points

---
## Content

Multiple Entry Points main use case is when an application has multiple application experiences which are isolated, but share a lot of code. For example when you have a user and admin experience, where the user experience has fewer features.

A basic example of declaring entry points: 
```javaScript
{
    entry: {
        app: "./app",
        admin: ["./admin", "./user-editor"]
    },
    output: {
        path: path.join(__dirname, "dist"),
        filename: "[name].entry.js"
    }
}
```
*`app`* and *`admin`* are both declared as entry points as they're all passed to *entry* with the key representing the entry point name.

These will result as separate files with the application _key_ being the prefix of the output filename, replacing the `[name]` part defined in the `output.filename`.