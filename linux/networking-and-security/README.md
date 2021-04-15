name: Networking & Security

description: Linux does a great job at providing extensibility for network configuration and security management.

sections:
  '0':
    - basics-networking
    - ssh-connections
    - ssh-maintain
  '1':
    - bandwidth-monitoring-tools
    - firewall-configuration-maintenance
    - ssh-remote
    - webscraping
  '2':
    - networking-tips
    - security

standards:
  network-monitoring-utilities:
    name: Use network monitoring utilities
    description: This standard covers the use of utilities used to monitor unix systems.
    objectives:
      0: Use netstat to monitor traffic by network protocol
      1: Use ss to monitor and manage sockets
      2: Use tcpdump to monitor all TCP traffic
  secure-shell:
    name: Use secure shell
    description: This standard covers initiating a secure shell connection to another network node.
    objectives:
      0: Use SFTP to securely transfer files over an insecure network
      1: Recognize the steps of the SSH Handshake Protocol
      2: Generate cryptographic keys for the SSH Handshake using algorithms not yet reported as compromised
      3: Use the ssh software to securely connect a shell to another unix system over an insecure network
  communicate-securely-wan:
    name: Communicate securely across a wide area network
    description: This standard deals with the ability to secure communications across a wide area network.
    objectives:
      0: Distinguish secure from insecure network protocols
      1: Monitor the suitability of cryptographic algorithms for encrypting communications against being intercepted and unencrypted
      2: Generate and store cryptographic keys for cryptographic handshake protocols
      3: Monitor the suitability of cryptographic algorithms for encrypting communications to sign or verify their authenticity
      4: Monitor the suitability of certificate issuing authorities for verification of identity
      5: Sign communications using a certificate from a certificate issuing authority to verify the authenticity of the source of the communications (SSL)
