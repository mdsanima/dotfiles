# Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# This is a configuration file for commit lint that makes sharing of commit conventions easy.
# Documentation: https://commitlint.js.org/


extends: ["@commitlint/config-conventional"]
rules:
  type-enum:
    - 2
    - always
    - [build, chore, ci, docs, feat, fix, perf, refactor, revert, style, test]
  scope-case:
    - 2
    - always
    - kebab-case
  subject-case:
    - 2
    - never
    - [upper-case, pascal-case, sentence-case, start-case]
  body-case:
    - 2
    - always
    - sentence-case
