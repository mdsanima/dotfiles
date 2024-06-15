// Defined rules on commit messages that are checked on pull requests.

// See the documentation for reference rules: https://commitlint.js.org/#/reference-rules

// These rules are used to check if the commit message contains a type.  The type is the first word
// in the commit message and must match one of the types defined in the `typesRule` array in this
// configuration file.

/** The array of rule types that are allowed in commit messages */
const typesRule = [
    "build",
    "chore",
    "ci",
    "docs",
    "feat",
    "fix",
    "perf",
    "refactor",
    "revert",
    "style",
    "test",
];

/** The array of rule subjects that are allowed in commit messages */
const subjectsRule = ["upper-case", "pascal-case", "sentence-case", "start-case"];

/** The rules configuration for commitlint that is used in GitHub Workflow Actions */
const commitlintConfig = {
    rules: {
        "type-enum": [2, "always", typesRule],
        "type-case": [2, "always", "lower-case"],
        "type-empty": [2, "never"],
        "scope-case": [2, "always", "kebab-case"],
        "subject-case": [2, "always", "sentence-case"],
        "subject-empty": [2, "never"],
        "subject-full-stop": [2, "never", "."],
        "header-max-length": [2, "always", 80],
        "body-case": [2, "always", "sentence-case"],
        "body-leading-blank": [2, "always"],
        "body-max-line-length": [1, "always", 100],
        "footer-leading-blank": [2, "always"],
        "footer-max-line-length": [1, "always", 100],
    },
};

export default commitlintConfig;
