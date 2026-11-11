---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Immediate retries land in a minute that is already over the cap, so they fail too and add load that new requests needed.
    requiredConcepts:
      - The retries arrive while the account is still over the cap, so they fail and add more load.
    acceptedAnswers:
      - They hit the same full minute and fail again, adding load.
      - The cap is still exceeded, so retries just add more failing calls.
      - Retries take slots new chats need while still over the limit.
    hints:
      - Has the cap changed when the retry arrives?
      - What do the retries add to the minute's count?
    tooVagueExamples:
      - It's too fast.
      - Retries are bad.
    incorrectExamples:
      - The provider bans accounts that retry.
      - Retries reset the rate limit to zero.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Rate Limits

---
## Content

Model providers cap how many requests and tokens your account can send per minute. That's called a rate limit, and a call over it gets an error back instead of a reply:

```plain-text
429 Too Many Requests
rate_limit_error: tokens per minute exceeded
```

The 429 status means the provider turned the call away without running it. Nothing was generated, so the call can be tried again.

On a rainy Friday, late orders triple the traffic to your food-delivery app's support chat. Here's what happens when every failed call retries at once:

```plain-text
19:02  chat traffic reaches 3x normal
19:03  20% of model calls get rate-limit errors
19:03  each failed call retries immediately
19:04  retries add load; 60% of calls now fail
```

The cap stayed fixed while the number of calls kept growing.

**Each immediate retry landed in a minute already over the cap, so it failed too.** The retries that did get through took slots that new chats needed.

---
## Practice

Chat traffic triples and some model calls get rate-limit errors. Why does retrying each failed call immediately make it worse?

???

- The retries hit a minute already over the cap, so they fail and add load.

---
## Revision

A provider rate limit caps the requests and ??? your account can send per minute.

- tokens
- users
- servers
- prompts
