name: Application Security

description: "AKA: Defense Against The Dark Arts"
 
core: true

sections:
  '0':
    - security-intro
    - osi-intro
    - osi-ii
    - securing-each-layer
  '1':
    - securing-each-layer-ii
    - xss
    - xxe
    - sql-injection
    - deserialization
  '2':
    - dependency-analysis
    - access-control
    - security-misconfiguration

standards:
  describe-osi-model:
    name: Describe the 7 Layers of the OSI Network Model
    description: This standard deals with defining, arranging and describing the 7 layers of the OSI 7 Layer Model and explaining its function.
    objectives:
      0: Arrange the 7 OSI Layers by level of Abstraction
      1: Describe the purpose of the OSI model
  identify-osi-layers:
    name: Identify Each Layer of the OSI Network Model
    description: This standard deals with identifying each OSI Layer and explain their role in the stack.
    objectives:
      0: Identify and Explain the function of the Physical Layer
      1: Identify and Explain the function of the Data Link Layer
      2: Identify and Explain the function of the Network Layer
      3: Identify and Explain the function of the Transport Layer
      4: Identify and Explain the function of the Session Layer
      5: Identify and Explain the function of the Presentation Layer
      6: Identify and Explain the function of the Application Layer
  apply-osi-layer-security:
    name: Apply the Appropriate Controls to Minimize Vulnerability in Each Layer
    description: This standard deals with identifying vulnerabilities in each OSI Layer, and applying controls to mitigate risk therein
    objectives:
      0: Recognize vulnerabilities to the Physical Layer and Apply controls
      1: Recognize vulnerabilities to the Data Link Layer and Apply controls
      2: Recognize vulnerabilities to the Network Layer and Apply controls
      3: Recognize vulnerabilities to the Transport Layer and Apply controls
      4: Recognize vulnerabilities to the Session Layer and Apply controls
      5: Recognize vulnerabilities to the Presentation Layer and Apply controls
      6: Recognize vulnerabilities to the Application Layer and Apply controls
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
  xxe:
    name: Identify and prevent vulnerability to XML External Entity Attacks
    description: This standard deals with evaluating an application for vulnerability to XXE-based attacks, and mitigating those attack vectors.
    objectives:
      0: Evaluate an application for XML-based attacks using automated tools (such as SAST analyzers)
      1: Evaluate an application's dependency graph for vulnerable packages and processing methods
      2: Facilitate change management by creating recommended upgrade paths for developers
  insecure-deserialization:
    name: Evaluate source code for vulnerabilities to insecure deserialization
    description: This standard deals with evaluating source code for instances of insecure deserialization
    objectives:
      0: Identify instances of insecure deserialization in source code
      1: Apply logging and monitoring to deserialization
      2: Apply industry-standard best practices to mitigate deserialization attack vectors
  sensitive-data:
    name: Identify and protect sensitive data
    description: This standard deals with distinguishing between sensitive and non-sensitive data.
    objectives:
      0: Distinguish between sensitive and non-sensitive data categories
      1: Apply data-specific controls according to regulation or best practices
      2: Encrypt all sensitive data
      3: Configure caches not to store sensitive data
      4: Use up-to-date cryptographic algorithms and techniques
  broken-authentication:
    name: Evaluate an access control scheme for attack vectors and prevent them
    description: This standard deals with evaluating authentication schemes to determine the vectors for compromise
    objectives:
      0: Evaluate authentication forms for automated attack vectors
      1: Evaluate the credential recovery process for attack vectors
      2: Evaluate the credential storage scheme for weaknesses
      3: Evaluate the session layer for session-based attack vectors
      4: Apply logging and monitoring to authentication schemes
  broken-access-control:
    name: Analyze and report on an application's access control vulnerabilities
    description: This standard deals with running automated analysis tools on applications that have complex access control schemas to report on the fidelity in the implementation's access control scheme against the specification.
    objectives:
      0: Use an automated tool to evaluate an application's currently implemented access control scheme
      1: Create a report that lists access points that are not properly access controlled
      2: Evaluate an application for inappropriate elevation of privilege attack vectors
      3: Apply current industry best practices to mitigate future access control vulnerability
      4: Apply logging and monitoring to access-controlled resources
  configure-security:
    name: Analyze a given application for common security configuration errors and correct them
    description: This standard deals with evaluating the default settings of an application against the application user's security needs, and correcting the differences.
    objectives:
      0: Evaluate the application's default configuration across each part of the stack
      1: Change all default logins, passwords, and ports
      2: Disable verbose error reporting and stack trace leakage
      3: Ensure software is updated to the current Most Secure version
      4: Review cloud configurations, including service availability, access control and authentication
      5: Establish a review cadence that is appropriate to the level of risk
  analyze-dependencies:
    name: Analyze project dependencies to find identified vulnerabilities
    description: This standard deals with one's ability to use an open-source tool or list to analyze project dependencies for documented security issues or vulnerabilities with open-source dependencies.
    objectives:
      0: Identify the dependencies of an application, including their specific version number
      1: Analyze a project's dependencies for security vulnerabilities using an analysis tool
      2: Mitigate security vulnerabilities by upgrading vulnerable packages uncovered with an analysis tool
  security-feed:
    name: Use community-sourced lists of vulnerability and mitigation techniques to advance your security practice
    description: This standard deals with building a personal news feed that keeps you current on the fast-moving security field.
    objectives:
      0: Identify relevant news sources that discuss vulnerabilities and mitigation strategies in detail
      1: Identify relevant communities that participate in vulnerability research and mitigation
      2: Identify relevant events to participate in the application security industry
  automated-tools:
    name: Use automated tools to scan for vulnerabilities
    description: This standard deals with the use of common automated checkers and tools to validate source code or perform black box testing or automatic port scanning.
    objectives:
      0: Use a network monitoring tool to detect vulnerable network devices
      1: Use a vulnerability scanner to scan for common application vulnerabilities
      2: Use a cracking tool to thwart cryptographic security measures
