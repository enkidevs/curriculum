---
author: amgando
type: normal
category: must-know
links:
  - >-
    [What Is DNS?](https://www.cloudflare.com/en-gb/learning/dns/what-is-dns/){article}
  - >-
    [RFC 1035 Defines DNS](https://www.ietf.org/rfc/rfc1035.txt){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# DNS - Role and Responsibility


---

## Content

Only some sections of a URL or email address are recognized by DNS. Take these two examples:

- `bill@dollaDollaBills.com`
- `https://www.google.com/search`

Both of these have *more* information than DNS is responsible for. In the first of these two examples, `bill@dollaDollaBills.com`, only the portion after the `@` symbol is relevant to DNS. DNS needs to know the IP address of `dollaDollaBills.com`, but DNS doesn't care about bill -- that is the SMTP (email) servers responsibility.

In the second, `https://www.google.com/seach`, the center segment `www.google.com` is DNS's responsibility. The first part, `https://` indicates the protocol for this request. The protocol controls the format of the data being exchanged, and is irrelevant to DNS, which only cares about what IP address to send the data to. The final part, `/search` is a route on `www.google.com` and is Google's webserver's responsibility, not DNS's. `www.google.com` is managed by DNS.

Finally, an entire domain name is required in order to map to a specific IP address. Parts of a domain such as `.com` or `.net` as standalone strings are  not eligible for an IP address, although DNS does play a role in their management; there are special servers responsible for managing “Top Level Domains” like com, net, edu, gov, and so on, but those TLD servers have unique names -- for example `h.gtld-servers.net` is the name of one such server.


---

## Practice

Which of the following values can be mapped to an IP address using DNS?

???

- `www.tebs-lab.com`
- `someone_special@gmail.com`
- `https://tebs-game-of-life.com/conways-editor/conways-editor.html`
- `.gov`
- `www.facebook`


---

## Revision

Which subset of this URL can be mapped to an IP address using DNS?

`https://www.tebs-game-of-life.com/conways-editor/conways-editor.html`

???

- `www.tebs-game-of-life.com`
- `https://www.tebs-game-of-life.com/conways-editor/conways-editor.html
- `/conways-editor/conways-editor.html`
- `https://`
- `www.tebs-game-of-life`
