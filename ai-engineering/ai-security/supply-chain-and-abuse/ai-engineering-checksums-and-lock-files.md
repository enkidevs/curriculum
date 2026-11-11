---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Verify the file's checksum against the one its publisher lists, or confirm the publisher is who you expect.
    requiredConcepts:
      - Verify the checksum against the publisher's, or confirm who published it.
    acceptedAnswers:
      - Check its checksum matches the publisher's.
      - Confirm it comes from the publisher I expect.
      - Compare the file hash with the one on the model's official page.
    hints:
      - How do you know the file is the one its publisher released?
      - Who uploaded it?
    tooVagueExamples:
      - Make sure it's safe.
      - Check it works.
    incorrectExamples:
      - Check how many downloads it has.
      - Run it once and see if the results look good.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: A range like 3.x installs any new release, including a broken or compromised one; pinning an exact version with its hash in a lock file stops that.
    requiredConcepts:
      - It installs any new release in that range, including a broken or compromised one.
    acceptedAnswers:
      - Any new 3.x release gets installed, even a tampered one.
      - A bad new release could slip in without anyone choosing it.
      - It isn't pinned, so the next install can pull a compromised version.
    hints:
      - Which version does "3.x" install next month?
      - Who decides when that version changes?
    tooVagueExamples:
      - It's outdated.
      - Versions are tricky.
    incorrectExamples:
      - It's too old to get security fixes.
      - Version ranges make installs slower.

---

# Checksums And Lock Files

---
## Content

A downloaded model or library might not be the file its publisher released.

A checksum is a file's fingerprint, so a matching one proves the file is the exact one its publisher released. A lock file records the exact version and checksum of each library your app installs.

Here's how the same search assistant first pulled in its embedding model and PDF parser:

**🚫 Floating**
```plain-text
embedding model:  from a public model hub
PDF parser:       pdfreader 3.x
```

Anyone can upload to a public model hub, and some model file formats run code when they're loaded. And `3.x` installs any new parser release, including a broken or compromised one.

**✅ Pinned**
```plain-text
embedding model:  embedmini v2, checksum verified
PDF parser:       pdfreader 3.4.1, hash in lock file
```

**Now each file has to match a known fingerprint before it's used.**

pip, Python's installer, uses a requirements file with hashes as its lock file.

Here's what it prints when a downloaded parser doesn't match its hash:

```plain-text
ERROR: THESE PACKAGES DO NOT MATCH THE HASHES FROM THE
REQUIREMENTS FILE. [...] someone may have tampered
with them.
    pdfreader==3.4.1 from https://[...]:
        Expected sha256 4f1c09[...]
             Got        9a7e52[...]
```

The install stops, so the changed file never reaches your app.

---
## Practice

You download an embedding model's files from a public model hub. Name one check before you use it.

???

- Verify its checksum matches the one its publisher lists.

---
## Revision

Your app's requirements list `pdfreader 3.x`. What risk does that range carry?

???

- It installs any new release, even a compromised one.
