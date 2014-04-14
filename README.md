# Code Walk

A simple utility to help keep students focused on the right output during
code walks.

Usage:

```shell
$ codewalk [EXECUTABLE]
```

`codewalk` will execute the provided file and split the output into chunks
separated by the regex /\nEXAMPLE [0-9]\n/ or similar, then output only
the most recent chunk.
