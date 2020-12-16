name: NPM

description: Node package manager. It does everything it says in its name.

sections:
  '0':
    - intro-npm
    - npm-features-i
    - packages-modules
  '1':
    - npm-features-ii
    - publishing
    - npm-tools-i

standards:
  use-open-source-javascript-packages:
    name: Use open source JavaScript packages
    description: This standard covers searching for and selecting an open-source JavaScript package from the NPM repository to solve a problem.
    objectives:
      0: Search the NPM repository for open-source code to solve a problem
      1: Distinguish between badly and well maintained packages as a benefit or cost factor
      2: Assess security vulnerabilities in an open-source JavaScript package as a benefit or cost factor
      3: Distinguish the effectiveness of documentation in an open-source JavaScript package as a benefit or cost factor
      4: Distinguish the test coverage of a package as a benefit or cost factor
      5: Distinguish a package for performance optimization as a benefit or cost factor
      6: Evaluate a package for it's ability to improve expressiveness as a benefit factor
      7: Evaluate a package's install size as a cost factor
      8: Evaluate the licensing of a package as a cost factor
      9: Evaluate the opinion of the community as a benefit factor
      10: Evaluate the opinion of the community as a cost factor
      11: Effectively weigh benefit and cost factors to choose open source packages
      12: Create a dependency maintenance task to monitor package updates
  npm-tasks-and-modules-manager:
    name: Integrate npm as your default tasks and modules manager
    description: This standard deals with using NPM to handle build tasks and other processes, and use of NPM to handle dependency management.
    objectives:
      0: Use package.json to manage dependencies
      1: Use package.json to manage build scripts
      2: Use package.json to manage testing
      3: Use package.json to manage a script toolchain
  npm-publish:
    name: Use the npm online repository to publish a module
    description: This standard deals with creating open-source packages that are considered well maintained.
    objectives:
      0: Publish a module to the public NPM registry
      1: Publish a module to a private NPM registry
      2: Update a module on an NPM registry
      3: Use SemVer to version your package
      4: Use a generated documentation package to document your API
      5: Write a simple code example for your documentation
      6: Create a quickstart for your documentation
      7: Create unit tests for your API
      8: Create integration tests for your module
      9: Configure authorship and communication references in your package.json to provide support for your package
      10: Choose a license for your package


next:
  - javascript:react
 
