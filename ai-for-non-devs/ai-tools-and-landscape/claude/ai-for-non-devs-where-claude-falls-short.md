---
author: enki-ai

type: normal

category: caveats

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Claude can analyze uploaded images and create diagrams or interactive visuals, but it does not generate photos or illustrations like an image-generation tool.
    requiredConcepts:
      - Image understanding and diagram creation are available forms of visual work.
      - Photo or illustration generation is the missing capability.
    acceptedAnswers:
      - Claude can inspect images and build diagrams, but it is not a tool for generating photos or illustrations.
      - Saying it cannot do images ignores image analysis and interactive visuals; the real gap is image generation.
      - Claude handles visual input and some constructed visuals, but not synthetic photography or illustration.
    hints:
      - Is understanding an uploaded image the same task as creating a new one?
      - What kinds of visuals can HTML or SVG produce?
    tooVagueExamples:
      - It can do some images.
      - It is limited visually.
    incorrectExamples:
      - Claude cannot read an uploaded image.
      - Claude is a photo generator but cannot make diagrams.

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# The Boundary Around Visual Work

---
## Content

Claude[1] can analyze uploaded images. It can also make diagrams, charts, and interactive visuals with code.

**It does not generate photos or illustrations the way a dedicated image-generation tool does.**[2]

Choose based on the visual task:

- understand a screenshot or chart: Claude can help
- explain an idea with a diagram: Claude may fit
- create campaign photography or illustrated concepts: use an image generator

For documents full of images, check what Claude actually read. Some file types pass on the text but not the images inside.[3]

> ‼️ "Claude can't do images" is wrong. It reads images and makes diagrams, but doesn't generate photos.

---
## Practice

Why is the statement "Claude cannot do images" misleading?

???

- It can analyze images and build diagrams; it just doesn't generate photos.

---
## Revision

Of these jobs, the one that needs a tool other than Claude is ???.

- generating product photos
- drawing a flow diagram
- comparing policy documents
- extracting transcript decisions

---
## Footnotes

[1:Claude]
Anthropic's AI assistant.
https://claude.ai

[2:Visual Creation]
Claude can create diagrams and interactive visuals, but not photos or illustrations like image-generation tools.
https://support.claude.com/en/articles/9002504-can-claude-produce-images

[3:File Processing]
Visual processing depends on the uploaded file type and document length.
https://support.claude.com/en/articles/8241126-upload-files-to-claude
