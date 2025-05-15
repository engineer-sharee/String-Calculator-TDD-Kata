# String Calculator TDD Kata (Ruby + RSpec)

This project is a solution to the classic **String Calculator TDD Kata**, implemented in **Ruby** using **RSpec**. It demonstrates clean code, iterative development, and unit testing practices through Test-Driven Development (TDD).

---

## Problem Statement

Create a method `add(string)` that processes a string of numbers and returns their sum. The method must evolve iteratively based on test cases.

---

## Requirements Implemented

1. An empty string returns `0`  
2. A single number returns the value itself  
3. Two comma-separated numbers return their sum  
4. An unknown number of comma-separated values return their sum  
5. Newline (`\n`) is a valid delimiter in addition to commas  
6. Support for a custom delimiter format:  
   `//[delimiter]\n[numbers...]` (e.g. `"//;\n1;2"` returns `3`)  
7. Negative numbers raise an exception with all negatives listed:  
   e.g. `"1,-2,-3"` → `negative numbers not allowed -2,-3`

---

## Prerequisites

- Ruby (v3.0+ recommended)
- Bundler (`gem install bundler`)

### Install Dependencies
bundle install

## Run Test Suite
bundle exec rspec




