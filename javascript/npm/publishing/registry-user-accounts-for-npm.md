---
author: catalin
type: normal
category: how-to
tags:
  - workout
  - deep
links:
  - '[docs.npmjs.com](https://docs.npmjs.com/cli/adduser){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Registry user accounts for npm


---

## Content

The `npm adduser` command is used to create and verify users in the specified registry. The credentials will be saved to the `.npmrc` file.

Username, password and email values aren't specified as command arguments, but are asked and read in from prompts.

Additional configuration  arguments specified with flags are `registry`, `scope` and `always-auth`.

The first, `registry` indicates the **base URL** of the npm package registry:

```bash
npm adduser --registry=http://myreg.com
```

If `scope` is specified, the registry will only be used for packages with that scope:

```bash
npm adduser --registry=http://myreg.com
    --scope=@myScope
```

The `always-auth` is by default set to `false`, but if specified, all requests to the given registry should include authorization information as an authorization header:

```bash
npm adduser --registry=http:myreg.com
    --always-auth
```

Note that `npm login` is an alias for `npm adduser` and works in exactly the same way.


---

## Practice

For what command is `npm login` an alias?

???

- npm adduser
- npm signup
- npm signin
- npm add


---

## Revision

For what command is `npm login` an alias?

???

- npm adduser
- npm signup
- npm signin
- npm add
