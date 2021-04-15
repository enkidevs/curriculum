---
author: emmab
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# URLs


---

## Content

Regex can be used to check whether a URL is in the correct format.

What do all valid URLs start with... 🤔

Answer: **http://** or **https://**[1]

Knowing this, we can build our regex pattern 👍.

> 💡 Side note, as with all regex patterns - there are multiple ways they can be written depending on the strength and flexibility you're going for.

Here's one way we could validate a potential URL string:

`/(http[s]?:\/\/)[^\s(["<,>]*\.[^\s[",><]*/`

Let's break this example down into manageable chunks.

`/(http[s]?:\/\/)` - The pattern should include either "http" or "https" followed by "://".

> 💡 Remember that question marks make the character before optional and that forward slashes must be escaped using backslashes as they're a special regex character.

`/[^\s(["<,>]*/` - The pattern should NOT match any of the characters in the negated set (denoted by the ^ symbol). It can match characters outside of this set zero or more times.

`/\./` - The pattern should then have a dot ".". Again this needs to be escaped as it's a special character in regex.

`/[^\s[",><]*/` - After the first dot, the pattern can then match any character not found in the negated set.

Here's another example:

`/[(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}([-a-zA-Z0-9@:%_\+.~#?&//=]*)/`

This example allows valid URLs to contain either "https://", "http://", "<https://www.">, "<http://www."> or just "www.".

URLs can then contain characters from the `[a-zA-Z0-9@:%._\+~#=]` set followed by a ".". Then between two and six a-z characters, and zero or more characters from the next set of characters.


---

## Practice

Given the following URLs:

- `http://foo.com/blah_blah`
- `https://www.example.com/foo/?bar=baz&inga=42&quux`

Which regex pattern would validate both URLs?

???

- `http(s)?:\/\/(www)?.*`
- `http(s)?:\/\/(www\.).*`
- `http(s):\/\/(www\.)?.*`
- `http:\/\/(www\.)?.*`


---

## Revision

Given the following start of some URLs:

- `http://`
- `https://`
- `http://www.`
- `https://www.`

Which regex pattern would validate the start of all these URLs?

???

- `http(s)?:\/\/(www)?`
- `http(s)?:\/\/(www\.)`
- `http(s):\/\/(www\.)?`
- `http:\/\/(www\.)?`


---

## Footnotes

[1:Difference between https and http]

`http` stands for **Hyper Text Transfer Protocol**. It is the means by which data is sent from your browser to the server.

The "s" on the end of `https` stands for **Secure**. It means all communications between your browser and the server are encrypted.

`https` is faster than `http`, and is the preferred way to serve web pages.
