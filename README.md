node-sikuli
===========

Sikuli for Node.js

## What?

This magic is possible thanks to node-java

## Installation

You need to install Sikuli first (and the JDK I think?).
The sikuli-script.jar and native libraries must be in Java classpath.

For Mac, it will work out of the box

## Demo

```CoffeeScript
#!/usr/bin/env coffee
{Screen} = require "sikuli"
s = new Screen()
s.click "imgs/spotlight.png", 0
s.wait "imgs/spotlight-input.png"
s.type null, "hello world\n", 0
```
