---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A repeatable Gemini workflow names its sources instead of relying on a broad request.
    requiredConcepts:
      - Name the exact sources (file, thread, sender, or date) instead of a broad request.
    acceptedAnswers:
      - Point it at the specific thread and date range.
      - Say exactly which emails or sender to use, and check its sources.
      - Name the files it should use instead of "latest feedback".
    hints:
      - How will Gemini know which material to retrieve?
      - What in the prompt is too broad?
    tooVagueExamples:
      - Use a better prompt.
      - Check it carefully.
    incorrectExamples:
      - Run the same prompt again; it will settle down.
      - Trust it whenever Gemini lists a Workspace source.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: "Check the sources it actually retrieved: the right ones, up to date, and supporting the answer."
    requiredConcepts:
      - Check the emails it actually used (right ones, up to date, or backing the answer).
    acceptedAnswers:
      - That the emails it used are the latest.
      - Whether it pulled the right emails.
      - The listed sources, and that the answer matches them.
    hints:
      - Which emails did it use?
      - Could any be outdated?
    tooVagueExamples:
      - Check it.
      - The answer.
    incorrectExamples:
      - Whether it sounds confident.
      - Whether it was quick.

---

# Connected Answers Still Need Checking

---
## Content

**Workspace access does not make an answer reliable.**

Like any assistant, Gemini can invent details. It can pick up an older email when a newer one matters. Google advises checking the sources it lists with connected answers.[1]

That makes broad saved prompts unreliable. The same request may pull different material each time, even when the right email is in your account.

For a prompt you'll reuse, make sure the connection is on and name the exact file, thread, date, or sender it should use. Then check the sources it used before you rely on the result.

> ‼️ A common mistake is trusting a connected answer without opening its sources. Check that the emails it used are the right, current ones.

---
## Practice

Your saved Gemini prompt, "Summarize the latest client feedback," pulls different emails each week. How do you make it reliable?

???

- Name the exact thread, sender, or date, then check which sources it used.

---
## Revision

Gemini answered using several of your emails. What should you check next?

???

- Which emails it used, and whether they're the right, current ones.

---
## Footnotes

[1:Checking Connected Answers]
Google warns that Gemini can hallucinate or return outdated information when using connected Workspace apps.
https://support.google.com/gemini/answer/14959807
