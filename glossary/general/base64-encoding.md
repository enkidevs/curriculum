# Base64 Encoding

Base64 is a conversion method used to represent binary data. It does so by creating a "dictionary" where each Base64 digit is represented by exactly 6 bits of data.

A Base64 character is nothing more than an alphabet letter (or the `+`, `/` and `=` signs). Check out the full [conversion table](https://en.wikipedia.org/wiki/Base64#Base64_table).

When shipping data accross a network, it's never done by just sending over the binary data. This is because it is uncertain that it will work. Some protocols might think you inserted a special character combination (like a line ending) instead. For this reason, Base64 encoding is used.

If you're wondering why 64 and not another number, it's because those 64 characters are almost always present, and your data will be transferred without corruptions.