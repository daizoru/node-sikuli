#!/usr/bin/env coffee
java = require "java"

java.classpath.push '/Applications/Sikuli-IDE.app/Contents/Resources/Java/sikuli-script.jar'

root = "org.sikuli.script."

classes = [
  "Settings"
  "Screen"
  "Region"
  "Pattern"
  "Match"
  "Finder"
  "TextRecognizer"
]
for name in classes
  exports[name] = java.import root + name
