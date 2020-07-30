# daverona/pre-commit-cpp

[![pipeline status](https://gitlab.com/daverona//pre-commit-cpp/badges/master/pipeline.svg)](https://gitlab.com/daverona/pre-commit-cpp/-/commits/master)

This is a set of C/C++ hooks for [pre-commit framework](https://pre-commit.com/).

* GitLab repository: [https://gitlab.com/daverona/pre-commit-cpp](https://gitlab.com/daverona/pre-commit-cpp)
* Docker registry: [https://hub.docker.com/r/daverona/pre-commit-cpp](https://hub.docker.com/r/daverona/pre-commit-cpp)
* Available releases: [https://gitlab.com/daverona/pre-commit-cpp/-/releases](https://gitlab.com/daverona/pre-commit-cpp/-/releases)

## Overview

C/C++ hooks provided are:

* [clang-format](https://clang.llvm.org): formatter of C/C++ code based on a
style guide
* [cpplint](https://github.com/cpplint/cpplint): linter
(or style-error detector) for
[Google C++ Style Guide](http://google.github.io/styleguide/cppguide.html)
* [cppcheck](http://cppcheck.sourceforge.net/): static analyzer of C/C++ code
* docker-clang-format: docker-version clang-format hook
* docker-cpplint: docker-version cpplint hook
* docker-clang-format: docker-version clang-format hook

## Hook Prerequisites

> If you use Docker, don't need to install anything and skip this section.

* clang-format hook requires `clang-format` executable. Use 
brew (on macOS) or apt-get (on Ubuntu) to install it. For Windows, please read
[http://releases.llvm.org/download.html](http://releases.llvm.org/download.html).
* cppcheck hook requires `cppcheck` executable. Use brew 
(on macOS) or apt-get (on Ubuntu) to install it. For Windows, please read
[http://cppcheck.sourceforge.net/#download](http://cppcheck.sourceforge.net/#download).

## Hook Installation

To use C/C++ hooks, add the following YAML code block to your
`.pre-commit-config.yaml`:

```yaml
- repo: https://gitlab.com/daverona/pre-commit-cpp
  rev: 0.7.0                 # use the most recent version
  hooks:
  # Hooks using native executables
  - id: clang-format         # formatter of C/C++ code based on a style guide
  - id: cpplint              # linter (or style-error checker) for Google C++ Style Guide
  - id: cppcheck             # static analyzer of C/C++ code
  # Hooks using Docker
  - id: docker-clang-format  # clang-format in Docker container
  - id: docker-cpplint       # cpplint in Docker container
  - id: docker-cppcheck      # cppcheck in Docker container
```

> You don't need to use non-docker version hook and its corresponding docker version at the same time.
> For instance, if you use `docker-clang-format` hook, `clang-format` hook is not required (and `clang-format` executable is not required to be installed).

## Hook Configuration

### clang-format

clang-format hook uses Google style (as described in 
[Google C++ Style Guide](http://google.github.io/styleguide/cppguide.html)) 
by default. If you like to use a different style, say
[LLVM Coding Standards](http://llvm.org/docs/CodingStandards.html),
please add `args` to the hook to override the default style:

```yaml
- repo: https://gitlab.com/daverona/pre-commit-cpp
  rev: 0.7.0               # use the most recent version
  hooks:
  - id: clang-format
    args: ["-style=LLVM"]  # use LLVM Coding Standards
```

Available styles are `LLVM`, `Google`, `Chromium`, `Mozilla`, and `WebKit`.

## References

* pre-commit framework: [https://pre-commit.com/](https://pre-commit.com/)
* pre-commit supported hooks: [https://pre-commit.com/hooks.html](https://pre-commit.com/hooks.html)
* caramelomartins/awesome-linters: [https://github.com/caramelomartins/awesome-linters#cc](https://github.com/caramelomartins/awesome-linters#cc)
* clang-format homepage: [https://clang.llvm.org/docs/ClangFormat.html](https://clang.llvm.org/docs/ClangFormat.html) 
* clang-format man: [http://manpages.ubuntu.com/manpages/xenial/en/man1/clang-format-3.5.1.html](http://manpages.ubuntu.com/manpages/xenial/en/man1/clang-format-3.5.1.html)
* cpplint homepage: [https://github.com/cpplint/cpplint](https://github.com/cpplint/cpplint)
* cppcheck homepage: [http://cppcheck.sourceforge.net/](http://cppcheck.sourceforge.net/)
* cppcheck man: [http://www.polarhome.com/service/man/?qf=cppcheck&tf=2&of=Ubuntu&sf=1](http://www.polarhome.com/service/man/?qf=cppcheck&tf=2&of=Ubuntu&sf=1)
* LLVM Coding Standards: [http://llvm.org/docs/CodingStandards.html](http://llvm.org/docs/CodingStandards.html)
* Google C++ Style Guide: [http://google.github.io/styleguide/cppguide.html](http://google.github.io/styleguide/cppguide.html)
* Chromium C++ Style Guide: [https://chromium.googlesource.com/chromium/src/+/master/styleguide/c++/c++.md](https://chromium.googlesource.com/chromium/src/+/master/styleguide/c++/c++.md)
* Mozilla Coding Style Guide: [https://www-archive.mozilla.org/hacking/mozilla-style-guide.html](https://www-archive.mozilla.org/hacking/mozilla-style-guide.html)
* WebKit Code Style Guidelines: [https://webkit.org/code-style-guidelines/](https://webkit.org/code-style-guidelines/)
