## Repro of bug using Cake.Git on Linux

Failing build on Linux: ![Build status](https://api.travis-ci.org/johnkors/cakegit.svg?branch=master)

Working build on Windows: 

The Cake add-on "Cake.Git" running on Linux does not work due to something looking like a downstream bug in lib2git.

It works as intended on Windows / macOS.