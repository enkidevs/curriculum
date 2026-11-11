---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Very little, because the cache expires between requests, so each one processes the whole prompt again.
    requiredConcepts:
      - Little or none, because the cache expires before the next request.
    acceptedAnswers:
      - Hardly at all; the cache is gone by the next request.
      - Almost none, since 40 minutes is longer than the cache lasts.
      - Very little. Every request starts with a cold cache.
    hints:
      - How long does the cache last without a hit?
      - Is it still there when the next request comes in?
    tooVagueExamples:
      - Some.
      - It depends on the prompt.
    incorrectExamples:
      - A lot, since the prefix is identical every time.
      - Fully, as long as the stable text comes first.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Longer cache retention, so the cache is still there when the next request arrives.
    requiredConcepts:
      - Longer retention, or a longer cache lifetime.
    acceptedAnswers:
      - A longer cache lifetime.
      - Extended retention, if the provider offers it.
      - Keep the cache for an hour or more.
    hints:
      - Do all providers keep a cache for the same time?
      - What would the cache need to survive a 20-minute gap?
    tooVagueExamples:
      - Better caching.
      - A different setting.
    incorrectExamples:
      - A bigger cache, so more of the prompt fits.
      - Move the stable text to the end of the prompt.

---

# Cache Expiry

---
## Content

**A prompt cache expires if it isn't used for a while, and the next request then pays full price for the whole prompt.**

That time is usually a few minutes to an hour, depending on the provider, and each use resets it. Here are three requests with the same 3,700-token prefix, on a cache that expires after 5 minutes unused:

```plain-text
09:00  input: 3,800   cached: 0       first request
09:02  input: 3,800   cached: 3,700
09:30  input: 3,800   cached: 0       cache expired
```

The 09:02 request came while the cache was still there. Then nothing came in for 28 minutes, so by 09:30 the cache was gone.

So caching helps most with steady traffic. A support assistant with a request every few seconds reuses its cache all day, while an internal tool used twice an hour pays full price almost every time.

> 💡 If your requests are spaced out, check whether your provider offers longer cache retention. Some keep a cache for hours.

---
## Practice

Your feature gets one request every 40 minutes, and the cache expires after 5 minutes unused. How much does prompt caching help?

???

- Very little, since the cache expires between requests.

---
## Revision

Your tool sends a request every 20 minutes, but its prompt cache expires after 5. What could you ask the provider for?

???

- Longer cache retention, if it offers that.
