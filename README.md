# pony-maybe

Utilities for handling optional data in Pony.

## Status

[![CircleCI](https://circleci.com/gh/mfelsche/pony-maybe.svg?style=svg)](https://circleci.com/gh/mfelsche/pony-maybe)

## Installation

* Install [corral](https://github.com/ponylang/corral)
* `corral add github.com/adrianboyko/pony-maybe.git --version master`
* `corral fetch` to fetch your dependencies
* `use "maybe"` to include this package
* `corral run -- ponyc` to compile your application

## Usage

```pony
use "maybe"

class WithOptionalStuff
  let _stuff: Maybe[String] = None

  fun update_stuff(new_stuff: String): Maybe[String] =>
    _stuff = new_stuff

  fun size(): USize =>
    Opt.get[USize](
      Opt.map[String, USize](_stuff, {(s) => s.size() }),
      0
    )
```
