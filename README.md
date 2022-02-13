# pre-commit-cpp

This repo is derived from the excellent pre-commit hook from https://gitlab.com/daverona/pre-commit/cpp.
That setup does not permit custom style files to `clang-format`, and so this modified repo exists.
The `-style=Google` flag to `clang-format` is removed, and should be specified in `.pre-commit-config.yaml`
under args as either `-style=STYLENAME`, or `-style=file:filename` for a style file. See instructions
[here](https://clang.llvm.org/docs/ClangFormat.html) for generating style files.

The content below is the README from the original repo, with pruned down content to reflect
the limited feature set of this pseudo-fork.

# daverona/pre-commit/cpp

This is a C/C++ hook for [pre-commit framework](https://pre-commit.com/).

* GitHub repository: [https://github.com/lightning-auriga/pre-commit-cpp](https://github.com/lightning-auriga/pre-commit-cpp)
* Original GitLab repository: [https://gitlab.com/daverona/pre-commit/cpp](https://gitlab.com/daverona/pre-commit/cpp)

## Overview

C/C++ hook provided is:

* [clang-format](https://clang.llvm.org): formatter of C/C++ code based on a
style guide specified in `.pre-commit-config.yaml`

## Hook Prerequisites

* clang-format hook requires `clang-format` executable. Use 
brew (on macOS) or apt-get (on Ubuntu) to install it. For Windows, please read
[http://releases.llvm.org/download.html](http://releases.llvm.org/download.html).

## Hook Installation

To use C/C++ hooks, add the following code block to your `.pre-commit-config.yaml`:

```yaml
- repo: https://github.com/lightning-auriga/pre-commit-cpp
  rev: 1.0.0                 # use the most recent version
  hooks:
  # Hooks using native
  - id: clang-format         # formatter for C/C++ code based on a style guide
    args: "-style=Google"    # replace this with your style of choice, or file:stylefile
```

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
