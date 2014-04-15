# Code Walk

A simple utility to help keep students focused on the right output during
code walks.

Usage:

```shell
$ codewalk ruby examples.rb
```

Or...

```shell
$ codewalk node examples.js 10 50
```

`codewalk` will run the specified command in a subshell and split the output
into chunks separated by the regex `/\nEXAMPLE [0-9]*\n/` or similar, then
output only the most recent chunk.

It's useful to define a function such as...


```ruby
def example num
    puts
    puts "EXAMPLE #{num}"
    puts
end
```

... at the top of your file so it is easy to separate examples, produces more
readable source, and will still run as a normal script with pretty output of
all examples when students who don't have the `codewalk` gem installed run the
finished examples script.
