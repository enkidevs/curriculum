---
author: lizTheDeveloper
type: normal
category: how-to
links:
  - '[OWASP Top Ten](https://owasp.org/www-project-top-ten/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Fix broken access control


---

## Content

Fixing broken access control means adding automated checks in places that you've identified to have improper access control.

From OWASP:

> Access control is only effective if enforced in trusted server-side
> code or server-less API, where the attacker cannot modify the
> access control check or metadata.

OWASP suggestions for prevention:

- With the exception of public resources, deny by default.
- Implement access control mechanisms once and re-use them
  throughout the application, including minimizing CORS usage.
- Model access controls should enforce record ownership, rather
  than accepting that the user can create, read, update, or delete
  any record.
- Unique application business limit requirements should be
  enforced by domain models.
- Disable web server directory listing and ensure file metadata
  (e.g. .git) and backup files are not present within web roots.
- Log access control failures, alert admins when appropriate
  (e.g. repeated failures).
- Rate limit API and controller access to minimize the harm from
  automated attack tooling.
- JWT tokens should be invalidated on the server after logout.

In order to fix broken access control issues:

1. Produce a report of access control misconfigurations
2. Add checks to each resource that validate the user's presented credential
3. Return the proper HTTP status code for failing attempts
4. Apply process control measures to your development process to prevent future errors
5. Check for broken access control during your review cadence


---

## Practice

Fixing broken access control involves first ??? broken access control, then adding ??? for each ???.

- identifying
- automated checks
- misconfigured resource
- having
- guards
- entrance


---

## Revision

What order do these steps go in, to fix broken access control?

???
???
???
???
???

- Produce a report of access control misconfigurations
- Add checks to each resource that validate the user's presented credential
- Return the proper HTTP status code for failing attempts
- Apply process control measures to your development process to prevent future errors
- Check for broken access control during your review cadence
