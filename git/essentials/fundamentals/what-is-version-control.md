---
author: catalin

levels:

  - beginner

type: normal

category: thought

aspects:

  - introduction
  
inAlgoPool: false


links:

  - '[About Version Control Official Documentation](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control){website}'
  - '[What Is Version Control](https://www.atlassian.com/git/tutorials/what-is-version-control){website}'


---

# What is Version Control?

---
## Content

**Version Control** defines a **system** intended to help software development teams record and manage changes to their source code[1].

Using a Version Control System, or **VCS**, different versions of a file collection or project can be created or changed; each version is representing the exact state of the project at a given time.

Keeping this in mind, one can *revert*, *compare* and even *switch* between the versions of a project's files, which dramatically systemizes a team's workflow.

Other benefits of using a **VCS** include:
- a complete history of file changes, which simplifies tracking and fixing bugs
- a backup is always immediately available
- team members are able to work concurrently, thus minimizing the risk of conflicts between their work

There are three main distinguishable types of **VCS** software:

1. **Local Version Control** - the simplest  **VCS**, which works by keeping local copies of the file versions on your computer.
2. **Centralised Version Control** (CVCS) - developed to make collaboration within a team easier. Instead of a local database, a single *centralized* server is used to keep all file versions from which team members can *check out* them.
3. **Distributed Version Control** (DVCS)[2] - rather than only the latest changes to a file, each team member has a full copy of the project[3] including the history.

---
## Practice

What *type* of VCS **only** makes use of a local database to keep changes of files under version control?

???


* Local Version Control
* Centralised Version Control
* Distributed Version Control

---
## Revision

In order to be considered in the git commit a file must be ?

???


* Tracked
* Untracked
* Marked
* Saved

---
## Footnotes
[1:applicability]
Keep in mind that **Version Control** software is not limited to text files and implicitly source code, but also to different kind of files such as images, making it useful for a wide range of services and not only for software development.
[2:DVCS]
DVCS was developed as a response to a vulnerability implied by both local or centralized version control systems.

Both previous types have a common point of failure - a local database can get corrupted or a centralized server can go down. In these cases work will be lost except for various local portions.

[3:repository]
The project files and history in DVCSs is the code **repository**.
 
