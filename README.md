node-sikuli
===========

You need to install Sikuli first.

 * On mac, it will work out of the box
 * On Linux,you have to configure the ENV/PATH yourself
 * On Windows well, I suppose it is like for Linux.. no? :)

```CoffeeScript

#!/usr/bin/env coffee
java = require "java"
java.classpath.push "lib/java/hazelcast.jar"
java.classpath.push "lib/java/hazelcast-client.jar"
Hazelcast = java.import "com.hazelcast.core.Hazelcast"
Hazelcast.getMap "customers", (e,m) ->
  m.putSync 1, "Joe"
  m.putSync 2, "Hello"
  m.get 2, (e,v) ->
    console.log "value: #{v}"
```

I'm testing if I could use it from Tsunami. Work in progress.