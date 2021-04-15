---
author: catalin
type: normal
category: tip
links:
  - >-
    [en.wikipedia.org](https://en.wikipedia.org/wiki/Java_Naming_and_Directory_Interface){website}
notes: |
  https://insights.enki.com/#/contrib/5599b0227d50844e00f804b4
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Java Naming and Directory Interface ( *JNDI* )


---

## Content

*Java Naming and Directory Interface* is a Java **API** for a directory service that allows Java software clients to discover and look up data and objects via a name.  

The **API** provides:

- a mechanism to bind an object to a name
- a directory-lookup interface that allows general queries
- an event interface to check when modifications occur

In the simplest case, an initial `context` must be created using the specific implementation:

```java
Hashtable env = new Hashtable();
env.put(Context.INITIAL_CONTEXT_FACTORY, 
    "com.sun.jndi.fscontext.
       RefFSContextFactory");
Context ctx = new InitialContext(env);
```

A context is then used to look up previously bound names in that `context`:

```java
MyClass myClass = (MyClass)  
ctx.lookup("com.mydomain.MyClass");

```

*JNDI* can be used to perform read operations and operations for updating a namespace.
**JNDI** specifies a service provider interface that allows directory service implementations to be plugged into the framework.


---

## Revision

JNDI API has access to ???

- multiple naming and directory services.
- network statistics.
- classes bytecode.
