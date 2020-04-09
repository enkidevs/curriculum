name: Jobs & Processes, Data Manipulation

description: Must know concepts of handling jobs and processes in addition to data manipulation in Linux.

sections:
  '0':
    - basics-process-management
    - file-streams
    - grep-and-background-tasks
  '1':
    - utilities
    - working-with-files
    - data-manipulation-recipes
  '2':
    - crontab

standards:
  sysadmin-tools-processes:
    name: Use system administration tools to manage processes in Linux
    description: This standard covers the use of common built-in tools to linux such as ps and top to manage processes.
    objectives:
      0: Use built-in tools like top and ps to view processes in linux
      1: Use built-in tools like kill to end processes
      2: Use lsof to determine open streams (files and network streams) by process
      3: Use built-in tools like vmstat, iostat, mpstat, iotop to monitor the resource requirements by process
  scheduling-utilities:
    name: Use scheduling utilities to automate processes
    description: This standard covers the scheduling of automated processes using utilities such as crontab.
    objectives:
      0: Accurately analyze crontab scheduling sequences and predict the schedule of their execution
      1: Use crontab to schedule recurring commands
  modify-data-sed:
    name: Modify text streams with sed statements
    description: This standard covers modification of any text stream using sed.
    objectives:
      0: Use sed to replace text in a text stream
      1: Use sed to reformat a text stream
      2: Use regular expressions with sed to modify a text stream
      3: Modify data using sed with filtering parameters such as ranges or regular expression pattern matches
  analyze-sed-statements:
    name: Accurately analyze and predict the result of complex sed statements
    description: This standard covers reading complex sed statements and accurately predicting the result given the input.
    objectives:
      0: Identify sed flags
      1: Identify sed regular expression syntax
      2: Evaluate the validity of given sed commands
  search-awk:
    name: Search files with awk
    description: This standard covers the methods by which awk assists with searching and filtering lines in multiple files, such as application logs or tabular data stored in plaintext.
    objectives:
      0: Use awk to print lines
      1: Use conditional expressions to filter lines for matches
      2: Use regular expressions to filter lines for matches
      3: Use compound expressions to filter lines for matches
      4: Use compound expressions to refer to and manipulate individual data fields
      5: Use awk internal variables to output information about match metadata, such as file, record, or field location
      6: Use awk begin and end blocks to format, label, or summarize information
  aggregate-data-awk:
    name: Aggregate data in text files with awk
    description: This standard covers aggregating information in plaintext files with awk.
    objectives:
      0: Use increment and decrement operators to aggregate counts of lines in an awk search
      1: Use variables to aggregate data about awk searches
      2: Use expressions to make complex aggregations with awk searches
  modify-data-awk:
    name: Modify data in text files with awk
    description: This standard covers making changes to files with awk statements.
    objectives:
      0: Use awk statements to add or remove characters from a data field
      1: Use compound awk statements to reformat a data file
      2: Use regular expressions and awk statements to consume and filter a data file
      3: Use regular expressions and awk statements to consume and filter multiple data files
      4: Use regular expressions and awk statements to consume and filter multiple data files into another format
  search-grep:
    name: Search files with grep
    description: This standard covers searching multiple files with grep.
    objectives:
      0: Use grep to search files for exact string matches
      1: Use file and directory selection flags to search multiple or filter files and directories
      2: Modify the search parameters of grep using matching control flags
      3: Use grep to search files using regular expressions
      4: Use grep to search for a list of fixed strings
      5: Modify the output of grep using flags or environment variables

next:
  - linux:system-and-package-management

prerequisites:
  - linux:user-and-file-management
