name: User and File management

description: Files, users, permissions.

core: true

sections:
  '0':
    - bash-environment
    - file-management
    - file-permissions
    - file-management-tips
    - shell
    - pipelines
    - user-management
    - user-permissions
  '1':
    - terminal-power-user-tips
    - conditions
    - file-management-tips-ii
    - default-permissions
    - super-users-and-root
    - terminal-history
  '2':
    - pipeline-tools
    - user-management-utilities

standards:
  file-management:
    name: Manage files via the command line
    description: This standard deals with creation and deletion of files, renaming files, traversing the file system, and complex file operations such as appending text or tailing a file.
    objectives:
      0: Traverse the file system with cd
      1: Analyze directories with ls
      2: Create files with touch
      3: Create directories with mkdir
      4: Move or rename files with mv
      5: Copy files with cp
      6: Delete files with rm
      7: Delete directories with rmdir
      8: Output a file's contents to stdout with cat
      9: Append to a file
      10: Watch a file with tail
      11: Distinguish relative file paths from absolute file paths
  configure-shell:
    name: Configure your shell
    description: This standard covers configuration of shell behavior and display using built-in unix tools as well as external tools.
    objectives:
      0: Change the colors of your terminal
      1: Add data to your terminal's line
      2: Change your display name
      3: Change your shell
      4: Add startup scripts and environment variables by modifying shell lifecycle configuration scripts
  environment-variables:
    name: Set and use environment variables
    description: This standard covers the use of user-local and system environment variables.
    objectives:
      0: Inspect environment variables in your shell
      1: Set environment variables manually
      2: Set environment variables with a shell script, like .bash_rc
      3: Use environment variables in a shell command
      4: Use environment variables in a shell script
  standard-streams-pipelines:
    name: Direct program input and output using stdin, stdout, pipes and redirection
    description: This standard covers file input and output descriptors, the standard streams, stdin, stdout, stderr, and their manipulation through pipelines.
    objectives:
      0: Distinguish the purpose and output of the standard streams
      1: Redirect stdout to a file
      2: Use the stdout of one program as the stdin for another program with a pipe
      3: Direct stdout and stderr to different places
      4: Tail a stderr and stdout log in two terminal windows
      5: Use pipes to direct data through multiple programs
  users-permissions:
    name: Manage users and their permissions
    description: This standard covers user management and the granting of privileges, and creation and management of groups.
    objectives:
      0: Create and remove users
      1: Identify the system artifacts of a user account
      2: Manage the passwords of users
      3: Grant and revoke system privileges to users
      4: Create and remove groups
      5: Add or remove users from groups
      6: Grant and revoke system privileges to groups
      7: Use system administration tools like w to monitor user activity
  files-permissions:
    name: Manage files and their permissions
    description: This standard covers management of file descriptors, executables, and other POSIX file system elements.
    objectives:
      0: Evaluate the read, write and execution permissions of a file using POSIX-compliant permissions
      1: Grant or restrict read, write, and execute permissions to users and groups
      2: Determine the appropriate permissions for a file
      3: Manage the ownership of a file
  write-shell-expressions:
    name: Write shell expressions
    description: This standard covers the use of simple unix programs typically available in your shell to perform operations on data.
    objectives:
      0: Use simple unix programs such as expr to operate on numerical values
      1: Use simple unix programs such as cat and grep to operate on string values
      2: Compose simple unix programs to produce strings or numerical values



next:
  - linux:jobs-and-processes-data-manipulation
