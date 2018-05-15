name: Application Security

description: "'; DROP TABLE Topics;"

standards:
  sql-injection:
    name: Identify vulnerability to and mitigate SQL Injection Attacks
    description: This standard deals with identifying vulnerability in your application of SQL injection attacks, and mitigating that vulnerability.
    objectives:
      0: Identify SQL injection risks
      1: Mitigate SQL injection risks using parameters
      2: Mitigate injection risks using whitelists
      3: Distinguish between the limitations of SQL Injection mitigation strategies
      4: Demonstrate a SQL injection attack using parameter manipulation
      5: Recognize SQL injection vulnerabilities in ORMs & other frameworks
  xss:
    name: Identify vulnerability to and mitigate XSS attacks
    description: This standard deals with identifying vulnerability in your application of Cross-site Scripting attacks, and mitigating that vulnerability.
    objectives:
      0: Identify reflection based XSS vectors
      1: Identify DOM based XSS vectors
      2: Identify stored XSS vectors
      3: Mitigate XSS using encoding & escaping un trusted input
      4: Mitigate XSS using sanitization techniques
      5: Test for XSS attacks
      6: Mitigate XSS attacks using CSP
      7: Identify common XSS filter circumvention techniques
  analyze-dependencies:
    name: Analyze project dependencies to find identified vulnerabilities
    description: This standard deals with one's ability to use an open-source tool or list to analyze project dependencies for documented security issues or vulnerabilities with open-source dependencies.
    objectives:
      0: Analyze a JavaScript project's dependencies for security vulnerabilities
      1: Analyze a Python project's dependencies for security vulnerabilities
      2: Analyze a Java project's dependencies for security vulnerabilities
      3: Analyze a Ruby project's dependencies for security vulnerabilities
      4: Mitigate security vulnerabilities by upgrading vulnerable packages uncovered with an analysis tool
