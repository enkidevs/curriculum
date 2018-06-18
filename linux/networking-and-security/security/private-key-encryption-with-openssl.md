---
author: catalin

levels:

  - basic

  - medium

type: normal

category: how to




---

# Private key encryption with `OpenSSL`

---
## Content

You can use **OpenSSL** to achieve public/private encryption. This implies the existence of two keys - one public and one private. 

Data encrypted using the public key can only ever be unencrypted using the private key. (This is called *asymmetric encryption*.)

This means that if you want to send someone data in an encrypted fashion, you would encrypt it with the other person's **public** key as he would decrypt it with its **private** key.

Generate your public/private key[1]:
```
$ openssl genrsa -out 
         private.pem 2048
```
To extract the public key as `public.pem`:
```
$ openssl rsa -in private.pem 
-out public.pem -outform PEM -pubout


```
Encrypt a file (`enki.txt`):
```
$ openssl rsautl -encrypt -inkey 
public.pem -pubin -in enki.txt 
       -out file.ssl

```

Decrypt with the **private** key:
```
$ openssl rsautl -decrypt -inkey 
private.pem -in file.ssl 
       -out decrypted.txt


```

---
## Practice

How do you extract your public key:
```
$ ??? ??? -in private.pem 
-out public.pem -outform PEM -pubout
```

* `openssl`
* `rsa`
* `genrsa`
* `ext`
* `rsautl`
* `open`
* `extract`

---
## Revision

Generate the private/public key pair using openssl:
```
$ openssl ??? ??? ???
```

* `genrsa`
* `-out`
* `keys.pem`

---
## Footnotes
[1:explanation] This creates a key file called private.pem that uses `2048` bits. This file actually has both the private and public keys.
 
