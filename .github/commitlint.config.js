// Defined rules on commit messages; see the docs: https://commitlint.js.org/#/reference-rules

const TypesArray = ["build", "chore", "ci", "docs", "feat", "fix", "perf", "refactor", "revert", "style", "test"];
const SubjectsArray = ["upper-case", "pascal-case", "sentence-case", "start-case"];

const Configuration = {
  rules: {
    "type-enum": [2, "always", TypesArray],
    "type-case": [2, "always", "lower-case"],
    "type-empty": [2, "never"],
    "scope-case": [2, "always", "kebab-case"],
    "subject-case": [2, "always", "sentence-case"],
    "subject-empty": [2, "never"],
    "subject-full-stop": [2, "never", "."],
    "header-max-length": [2, "always", 80],
    "body-case": [2, "always", "sentence-case"],
    "body-leading-blank": [2, "always"],
    "body-max-line-length": [2, "always", 100],
    "footer-leading-blank": [2, "always"],
    "footer-max-line-length": [2, "always", 100],
  },
};

module.exports = Configuration;
