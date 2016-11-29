# Calling remote scripts with npm
author: catalin

levels:

  - basic

  - beginner

type: normal

category: feature

links:

  - >-
    [www.marcusoft.net](http://www.marcusoft.net/2015/08/npm-scripting-configs-and-arguments.html#calling-remote-scripts){website}

---
## Content

Scripting can be specified in the `package.json` file under the `scripts` field.

 `npm` provides users the ability to call out to a bash or command file:
```json
{
  //fields
  "scripts": {
    "deploy:complex" : "./myScript.sh"
  },
  //fields
}
```

Using this practice requires that the user has **permission** for executing the specified script.

It's not recommended or good practice to use this when it's unnecessary as this will hide some functionality of the script.

---
## Practice

Scripting can be specified in the ??? under the ??? field.

*`package.json` 
*`scripts` 
*`README.md`  
*`dependencies` 
*`scripting` 
*`secrets`

---
## Revision

Complete the `package.json` in order to make the script `deploy` call the remote script `myDeploy.sh`:
```json
{
  //fields
  "???": {
    "???" : "./myDeploy.sh"
  },
  //fields
}
```

*`script`
*`deploy`
*`run`
*`resume`
*`remote`
*`call`