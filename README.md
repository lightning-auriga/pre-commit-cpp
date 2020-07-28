# pre-commit-cpp

[![pipeline status](https://gitlab.com/daverona//pre-commit-cpp/badges/master/pipeline.svg)](https://gitlab.com/daverona/pre-commit-cpp/-/commits/master)

This is a set of git [pre-commit framework](https://pre-commit.com/) hooks for
C/C++ language. 

* GitLab repository: [https://gitlab.com/daverona/templates/laravel](https://gitlab.com/daverona/templates/laravel)
* Docker registry: [https://hub.docker.com/r/daverona/pre-commit-cpp](https://hub.docker.com/r/daverona/pre-commit-cpp)
* Available releases: [https://gitlab.com/daverona/pre-commit-cpp/-/releases](https://gitlab.com/daverona/pre-commit-cpp/-/releases)

## Overview

The hooks provided are:

* [clang-format](https://clang.llvm.org): formatter of C/C++ code based on a
style guide: LLVM, Google, Chromium, Mozilla, and WebKit available
* [cpplint](https://github.com/cpplint/cpplint): linter
(or style-error detector) for
[Google C++ Style Guide](http://google.github.io/styleguide/cppguide.html)
* [cppcheck](http://cppcheck.sourceforge.net/): static analyzer of C/C++ code

These hooks require pre-commit framework to be installed on your system
and configured for each git repository. For more information please refer to

* [pre-commit installation](https://pre-commit.com/#install)
* [pre-commit plugins](https://pre-commit.com/#plugins) (`.pre-commit-config.yaml`)
* [pre-commit usage](https://pre-commit.com/#usage)
* [pre-commit hook list](https://pre-commit.com/hooks.html)

## C/C++ Hook Prerequisites

1. clang-format hook in pre-commit-cpp requires `clang-format` executable. Use 
brew (on macOS) or apt-get (on Ubuntu) to install it. For Windows, please read
[http://releases.llvm.org/download.html](http://releases.llvm.org/download.html).
2. cppcheck hook in pre-commit-cpp requires `cppcheck` executable. Use brew 
(on macOS) or apt-get (on Ubuntu) to install it. For Windows, please read
[http://cppcheck.sourceforge.net/#download](http://cppcheck.sourceforge.net/#download).

## C/C++ Hook Installation

To use the C/C++ hooks, add the following YAML code block to your
`.pre-commit-config.yaml`:

```yaml
- repo: https://gitlab.com/daverona/pre-commit-cpp
  rev: 0.6.0          # use the most recent version
  hooks:
  - id: clang-format  # formatter of C/C++ code based on a style guide: LLVM, Google, Chromium, Mozilla, and WebKit available
  - id: cpplint       # linter (or style-error checker) for Google C++ Style Guide
  - id: cppcheck      # static analyzer of C/C++ code
```

You don't need to use all the hooks together, i.e. add only the ones that you
need.

And remember, YAML is indentation sensitive: `.pre-commit-config.yaml` must
use the same number of whitespaces for indentation after adding the above code
block.

## C/C++ Hook Configuration

### clang-format

By default, Google style (as described in 
[Google C++ Style Guide](http://google.github.io/styleguide/cppguide.html)) 
is used. If you like to use a different style, say
[LLVM Coding Standards](http://llvm.org/docs/CodingStandards.html),
please add `args` to the hook to override the default style:

```yaml
- repo: https://gitlab.com/daverona/pre-commit-cpp
  rev: 0.6.0               # use the most recent version
  hooks:
  - id: clang-format
    args: ["-style=LLVM"]  # use LLVM Coding Standards
```

## Usage

Each time you commit to the git repository, the hooks will run automatically.
:-)

## References

* [pre-commit framework](https://pre-commit.com/)
* [pre-commit supported hooks](https://pre-commit.com/hooks.html)
* [https://github.com/caramelomartins/awesome-linters#cc](https://github.com/caramelomartins/awesome-linters#cc)
* [clang-format homepage](https://clang.llvm.org/docs/ClangFormat.html) and
[clang-format man page](http://manpages.ubuntu.com/manpages/xenial/en/man1/clang-format-3.5.1.html)
* [cpplint homepage](https://github.com/cpplint/cpplint)
* [cppcheck homepage](http://cppcheck.sourceforge.net/) and
[cppcheck man page](http://www.polarhome.com/service/man/?qf=cppcheck&tf=2&of=Ubuntu&sf=1)
* [LLVM Coding Standards](http://llvm.org/docs/CodingStandards.html)
* [Google C++ Style Guide](http://google.github.io/styleguide/cppguide.html)
* [Chromium C++ Style Guide](https://chromium.googlesource.com/chromium/src/+/master/styleguide/c++/c++.md)
* [Mozilla Coding Style Guide](https://www-archive.mozilla.org/hacking/mozilla-style-guide.html)
* [WebKit Code Style Guidelines](https://webkit.org/code-style-guidelines/)
