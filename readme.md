## Repro of bug using Cake.Git on Linux

Linux: [![Build Status](https://travis-ci.org/johnkors/cakegit.svg?branch=master)](https://travis-ci.org/johnkors/cakegit)

Windows: [![Build status](https://ci.appveyor.com/api/projects/status/lotw7sqd80h2de02/branch/master?svg=true)](https://ci.appveyor.com/project/JohnKorsnes/cakegit/branch/master)



The Cake add-on "Cake.Git" running on Linux does not work due to a downstream bug in lib2git.

```
Error: One or more errors occurred.
        The type initializer for 'LibGit2Sharp.Core.NativeMethods' threw an exception.

Unhandled Exception:
System.TypeInitializationException: The type initializer for 'LibGit2Sharp.Core.NativeMethods' threw an exception. ---> System.DllNotFoundException: lib/linux/x86_64/libgit2-1196807.so
```

It works as intended on Windows / macOS.

Update: `LibGit2Sharp` does not play well with Debian, which is the base image used for `FROM microsoft/dotnet:2.1-sdk`. [Switching to Ubuntu as a base image](https://github.com/johnkors/cakegit/commit/a304925b6c0bb724b6e8f4c2fd03b168bf72e99a) makes it build fine : [OK build](https://travis-ci.org/johnkors/cakegit/builds/355278344)