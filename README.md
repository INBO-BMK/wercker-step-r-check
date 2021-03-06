# r-check
[![wercker status](https://app.wercker.com/status/e7a0cc99dac1d2734be2c900863f56bb/s/master "wercker status")](https://app.wercker.com/project/bykey/e7a0cc99dac1d2734be2c900863f56bb)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/inbo/wercker-step-r-check/master/README.md)


A step to check an R package.  Best used with one of the
[inbobmk](https://hub.docker.com/u/inbobmk/) images. This is a stable fork of [r-check by Jim Hester](https://github.com/jimhester/wercker-step-r-check)

```yaml
    - inbobmk/r-check
```

## Options

* `warnings_are_errors` (optional). If `TRUE` then treat WARNINGS from `R CMD
  check` as errors.

## Example

Basic usage:
```
    - inbobmk/r-check
```

If you want warnings to fail the build.

```
    - inbobmk/r-check:
      warnings_are_errors: TRUE
```

# License

The MIT License (MIT)

Copyright (c) 2015 Jim Hester

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Changelog

## 0.0.9

- don't show file info of output files in case of fail so the the content of the files is displayed

## 0.0.8

- bugfix: errors trigger failure
- no longer use the deprecated cleanup = FALSE

## 0.0.7

- remove run_dont_test argument as it isn't supported in all versions of devtools

## 0.0.6

- add run_dont_test argument

## 0.0.5.1
- Make a fork for inbobmk

## 0.0.5
- Use info rather than echo for filenames when dumping files

## 0.0.4
- Use warn instead of warning, actually cat the output.

## 0.0.3
- Add R keyword

## 0.0.2
- Use Warning for messaging rather than echo

## 0.0.1
- initial release
