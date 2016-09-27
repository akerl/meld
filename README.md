meld
=========

[![Gem Version](https://img.shields.io/gem/v/meld.svg)](https://rubygems.org/gems/meld)
[![Dependency Status](https://img.shields.io/gemnasium/akerl/meld.svg)](https://gemnasium.com/akerl/meld)
[![Build Status](https://img.shields.io/circleci/project/akerl/meld/master.svg)](https://circleci.com/gh/akerl/meld)
[![Coverage Status](https://img.shields.io/codecov/c/github/akerl/meld.svg)](https://codecov.io/github/akerl/meld)
[![Code Quality](https://img.shields.io/codacy/f670580bfa704594b2230077c80c931e.svg)](https://www.codacy.com/app/akerl/meld)
[![MIT Licensed](https://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

Utility library for combining objects

## Usage

### Deep hash merge -- .deep_merge

This will merge nested hashes:

```
require 'meld/hash/deep_merge'

a = { x: 4, y: { dogs: 3, cats: 5 }, z: { pizza: 10 } }
b = { y: { dogs: 6, fish: 2 } }
c = a.deep_merge(b)
p c
# {:x=>4, :y=>{:dogs=>6, :cats=>5, :fish=>2}, :z=>{:pizza=>10}}

a.deep_merge! b
p a
# {:x=>4, :y=>{:dogs=>6, :cats=>5, :fish=>2}, :z=>{:pizza=>10}}
```

Credit for the method goes to [this StackOverflow answer](http://stackoverflow.com/questions/9381553/ruby-merge-nested-hash)

## Installation

    gem install meld

## License

meld is released under the MIT License. See the bundled LICENSE file for details.

