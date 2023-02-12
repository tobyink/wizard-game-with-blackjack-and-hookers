# Wizard Game

I'll make my own wizard game!

Note that this game is at a *very* early stage of development. If you try
to reach an area of the story which has not yet be written, you are
abruptly abandoned at a blank page, and the browser "back" button
will not help you get back!

## Play online

https://wizarg.tobyink.uk/

## Running locally

### Installation

You need:

* [Perl](https://www.perl.org/) (at least version 5.28)
* [cpanm](https://github.com/miyagawa/cpanminus)

Now install the story's prerequisites:

```shell
cpanm --installdeps .
```

### Execution

Set the `MOJO_HOME` environment variable to the full path to the directory
containing this README file.

Run:

```shell
si_www daemon
```

And visit this URL in your browser:

```text
http://127.0.0.1:3000/index.html
```

(Yes, the `index.html` is unfortunately needed right now!)
