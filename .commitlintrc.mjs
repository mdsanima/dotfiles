// Maintain a consistent coding style throughout the entire project codebase to
// ensure readability and maintainability.  Consistent style not only improves
// collaboration but also makes the code easier to review and debug.

// Linter configuration for rules on commit messages that are checked on pull
// requests, and before push to origin from local reposiotry.  For more
// information about, refer to the commitlint official documentation for the
// reference rules, see here: https://commitlint.js.org/#/reference-rules

// The rules are still a work in progress and subject to change.  I still need
// to think about this configuration, and for now this is a base template.

// These rules are used to check if the commit message contains a type.  The
// type is the first word in the commit message and must match one of the types
// defined in the `typesRule` array in this configuration file.

/** The array of type rules that are allowed in commit messages. */
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

/** The array of subject rules that are allowed in commit messages. */
const subjectsRule = [
    "upper-case",
    "pascal-case",
    "sentence-case",
    "start-case",
];

/** The rules for commitlint that is used in GitHub Workflow Actions on PR. */
const commitlintConfig = {
    rules: {
        "type-enum": [2, "always", typesRule],
        "type-case": [2, "always", "lower-case"],
        "type-empty": [2, "never"],
        "scope-case": [2, "always", "kebab-case"],
        "subject-case": [2, "always", "sentence-case"],
        "subject-empty": [2, "never"],
        "subject-full-stop": [2, "never", "."],
        "header-max-length": [2, "always", 72],
        "body-case": [2, "always", "sentence-case"],
        "body-leading-blank": [2, "always"],
        "body-max-line-length": [1, "always", 80],
        "footer-leading-blank": [2, "always"],
        "footer-max-line-length": [1, "always", 80],
    },
};

export default commitlintConfig;
