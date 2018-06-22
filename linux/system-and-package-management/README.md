name: System and Package management

description: Learn about your computer by properly monitoring and managing it.

sections:
  '0':
    - basic-package-management
    - disk-time-management
    - system-monitoring-i
  '1':
    - system-monitoring-ii
    - system-monitoring-iii
    - utility-management
  '2':
    - debian
    - system-recipes

standards:
  external-packages:
    name: Use external packages to add capabilities to your system
    description: This standard covers use of package managers to install tools on your system.
    objectives:
      0: Use built-in package managers to check the packages on your system
      1: Use built-in package managers to install new packages on your system
      2: Use alternative package managers to install new packages on your system
      3: Evaluate the risks of installing a package from an alternative package manager
  identify-system-hardware:
    name: Identify your system’s hardware and properties
    description: This standard covers checking hardware capabilities with tools available on linux.
    objectives:
      0: Use ioreg or /proc/device-tree to discover devices available to your system
      1: Use lshw, lsusb, lspci, and lscpu to investigate hardware and devices
  analyze-system-performance:
    name: Analyze the performance of your machine
    description: This standard covers using tools to analyze system performance, in order to determine slowdowns, anomalies, and investigate other performance-affecting mechanisms.
    objectives:
      0: Use ps to monitor the resource usage of processes
      1: Use iostat to monitor the performance of storage devices
      2: Use memstat to monitor the resource usage of processes
      3: Determine the source of anomalous memory usage with ps
      4: Determine the source of anomalous cpu usage ps
      5: Determine the source of anomalous device usage with iostat

next:
  - linux:networking-and-security
