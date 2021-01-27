---
author: catalin
type: normal
category: hack
links:
  - >-
    [www.cyberciti.biz](http://www.cyberciti.biz/faq/linux-disable-modprobe-loading-of-usb-storage-driver/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Disabling **USB** storage devices


---

## Content

You may want to force and disable **USB** storage devices as to prevent other people from stealing secure data from your machine or to transfer malicious files.

The `modprobe` program is used for automatic kernel module loading. This is the program that needs configured to not load **USB** devices on demand.

Inside the `usb-storage.conf` file you must add a line that specified the installation of `usb-storage`:

```bash
echo "install usb-storage /bin/true" >>
  /etc/modprobe.d/usb-storage.conf
```

In previous versions of Linux this could be achieved by appending the same line to the `/etc/modprobe.conf` file, but newer versions flag it as deprecated.


---

## Practice

Disable USB storage devices:

```bash
echo "install ??? /bin/true"  
  >> /etc/???
```

- `usb-storage`
- `modprobe.d/usb-storage.conf`
- `usb-disable`
- `no-usb`
- `usb-security`


---

## Revision

You can disable USB storage devices by running:

```bash
echo "install ??? /bin/true"  
  >> /etc/???
```

- `usb-storage`
- `modprobe.d/usb-storage.conf`
- `usb-disable`
- `no-usb`
- `usb-security`
