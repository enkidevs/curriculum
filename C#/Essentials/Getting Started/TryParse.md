# TryParse
author: hellyale

levels:

  - basic

type: normal

category: must-know

---
## Content

C# allows the parsing of strings into ints, but what do you do if you aren't sure of the contents of the string?

built into the int type are two extension methods `Parse` and `TryParse`

`Parse` is useful if you are certain that the string you are converting can be an int

```csharp
string leet = "1337";
int number = int.Parse(leet);
```

If however the number cannot be converted to an int a `FormatException` will be thrown

```csharp
int pi = int.Parse("3.14");  //Exception will be thrown
```

`TryParse` returns a bool instead of an int (like Parse) and it uses the C# keyword `out` to return the int value for valid parsings.

```csharp
int pi;
if (int.TryParse("3.14", out))
    {
        Console.WriteLine("Parse worked yippie! pi now holds a number")
    }
else
    {
        Console.WriteLine("Can't Parse provided string into an int")
    }
```
In the example above the else statement will fire, but if you passed "404" to the same code the variable pi would be equal to 404. 

---
## Practice

`TryParse` returns the following type : ???

*`bool`
*`setInt` 
*`Parse` 
*`int`
*`out`

---
