name: HTML

description: Learn HyperText Markup Language

core: true

sections:
  '0':
    - web-introduction
    - html-basics
    - html-structure
    - core-html-elements
    - web-page-structure
  '1':
    - images
    - links
    - lists
    - media
    - forms
    - forms-ii
    - tables
  '2':
    - meta-elements
    - sectioning-elements
    - formatting-elements
    - formatting-text-elements
    - forms-iii
    - forms-iv
    - forms-v
  '3':
    - semantic-sections
    - citation-elements
    - computer-code
    - best-practices
    - html-entities
    - html-versions

standards:
  syntax-html:
    name: Identify and evaluate the syntax of HTML
    description: This standard deals with reading HTML, and identifying the component parts of the syntax.
    objectives:
      0: Identify an HTML element
      1: Identify HTML attributes
      2: Distinguish opening and closing HTML elements
      3: Distinguish valid HTML from invalid HTML
      4: Identify the structure of a valid HTML document
      5: Distinguish valid from invalid HTML documents based on their structure
      6: Identify and use commonly-held industry best practices
      7: Identify and use valid global attributes
  markup-text:
    name: Markup Text with HTML
    description: Use HTML to markup text
    objectives:
      0: Use HTML to add emphasis, bold, or other decoration to text
      1: Use HTML to add indentation or spacing to text
      2: Use HTML to create headings or other special text elements
      3: Use HTML to link two hypertext documents together
  layout-html:
    name: Lay out text and other elements with HTML
    description: This standard covers the use of HTML tags to lay out text, images, and other elements.
    objectives:
      0: Use sectioning elements to arrange elements vertically
      1: Use tables to arrange text fields and other elements vertically and horizontally
      2: Use semantic elements to arrange and visually distinguish elements
      3: Use inline elements to affect the presentation of text
      4: Use block elements to affect the presentation of text
  embed-media:
    name: Embed media with HTML elements
    description: This standard deals with embedding external media, such as images, video, audio, or iFrames, into an HTML document.
    objectives:
      0: Embed images into an HTML document
      1: Embed video into an HTML document
      2: Embed audio into an HTML document
      3: Embed arbitrary external content
      4: Use attributes to configure embedded media
  html-forms:
    name: Use HTML forms to collect user input
    description: This standard covers the use of HTML form elements to collect user input.
    objectives:
      0: Use input tags to collect text input from the user
      1: Use form tags to direct the output of a form
      2: Use button elements to create actions for the user
      3: Use label elements and placeholder attributes to label input fields
      4: Use checkboxes and checkbox groups to collect input from the user
      5: Use radio buttons and radio button groups to collect input from the user
      6: Use select and option elements to create dropdown controls and multi-select elements
      7: Use input element types to collect dates, numbers, or other formatted-text inputs from the user
      8: Use input patterns to validate user input
      9: Use autocomplete to improve the user experience
  metadata:
    name: Add metadata to HTML Documents
    description: This standard covers adding metadata to HTML documents.
    objectives:
      0: Add metadata to the relevant area of an HTML document
      1: Add metadata that improves the user interface
      2: Add metadata about the authorship of the document
      3: Add metadata about the content of the document
      4: Add metadata about the encoding and version of the document
  semantic-html:
    name: Use Semantic HTML to communicate about the structure of a document
    description: This standard covers the use of HTML tags to communicate about the contents of text elements, such as `article`, `address`, or `kbd`.
    objectives:
      0: Recognize semantic HTML tags
      1: Choose the correct HTML tag to communicate about the content of text
      2: Choose the correct HTML tag to communicate about the content of embedded media
      3: Structure an HTML document using the most relevant semantic HTML tags

next:
  - web:styling
