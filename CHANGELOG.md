# Changelog

All notable changes to this project will be documented in this file.

See [Conventional Commits](https://conventionalcommits.org/) website and
[Standard Version](https://githgub.com/conventional-changelog/standard-version/)
repository for commit guidelines.

<!-- markdownlint-disable -->
<!-- editorconfig-checker-disable-file -->

## [0.2.0](https://github.com/mdsanima/dotfiles/compare/v0.1.0...v0.2.0) (_2024-09-01_)

Introduces various improvements, including configurations for `clang-format`,
`clang-tidy`, and `markdownlint`. Added support for colored event logging, the
new __MDSANIMA__ theme, and enhanced terminal text formatting. _Neovim_ support
was expanded with new aliases and settings. Many fixes focused on file
organization, _Git_ configuration, and shell script optimizations.

### 🚀 Enhancements

- Add `clang-format` and `clang-tidy` configs ([#89](https://github.com/mdsanima/dotfiles/pull/89))
- Add ASCII art banner functionality and update error text styling ([#46](https://github.com/mdsanima/dotfiles/pull/46))
- Add colored event logging for terminal output ([#55](https://github.com/mdsanima/dotfiles/pull/55))
- Add gersemi formatter for CMake files ([#120](https://github.com/mdsanima/dotfiles/pull/120))
- Add hex color mode in print function ([#93](https://github.com/mdsanima/dotfiles/pull/93))
- Add hex color validation utility function ([#92](https://github.com/mdsanima/dotfiles/pull/92))
- Add library for conver functions ([#73](https://github.com/mdsanima/dotfiles/pull/73))
- Add markdownlint configuration ([#103](https://github.com/mdsanima/dotfiles/pull/103))
- Add new validation functions ([#91](https://github.com/mdsanima/dotfiles/pull/91))
- Add utility functions for shell operations ([#69](https://github.com/mdsanima/dotfiles/pull/69))
- Add validation utility functions ([#88](https://github.com/mdsanima/dotfiles/pull/88))
- Add YAML linting base configuration ([#119](https://github.com/mdsanima/dotfiles/pull/119))
- Add bash prompt theme configuration script ([#19](https://github.com/mdsanima/dotfiles/pull/19))
- Add new aliases for Neovim ([#36](https://github.com/mdsanima/dotfiles/pull/36))
- Add some new configuration settings for Neovim ([#26](https://github.com/mdsanima/dotfiles/pull/26))
- Basic configuration initial script for Neovim editor ([#22](https://github.com/mdsanima/dotfiles/pull/22))
- Enhance terminal text formatting functions ([#51](https://github.com/mdsanima/dotfiles/pull/51))
- Enhance nvim visibility and clipboard integration ([#42](https://github.com/mdsanima/dotfiles/pull/42))
- Expand color definitions on hexadecimal values ([#85](https://github.com/mdsanima/dotfiles/pull/85))
- Introduce `MDSANIMA` theme and sample function ([#45](https://github.com/mdsanima/dotfiles/pull/45))
- Introduce `libevent.sh` with functions ([#68](https://github.com/mdsanima/dotfiles/pull/68))
- Key bindings for windows and panes management ([#23](https://github.com/mdsanima/dotfiles/pull/23))

### 🧪 Fixes

- Add branch cleanup alias to gitconfig ([#40](https://github.com/mdsanima/dotfiles/pull/40))
- Add push and pull section in Git config ([#64](https://github.com/mdsanima/dotfiles/pull/64))
- Add configuration for `*.vim` files ([#35](https://github.com/mdsanima/dotfiles/pull/35))
- Add configuration for `devcontainer.json` file ([#18](https://github.com/mdsanima/dotfiles/pull/18))
- Add errors handling for `__mds_color_print` function ([#32](https://github.com/mdsanima/dotfiles/pull/32))
- Add new files and directories for ignore ([#17](https://github.com/mdsanima/dotfiles/pull/17))
- Change colors and clock on status bar ([#21](https://github.com/mdsanima/dotfiles/pull/21))
- Change shebang at the begining of a shell script ([#24](https://github.com/mdsanima/dotfiles/pull/24))
- Config commitlint file with `.mjs` extension ([#98](https://github.com/mdsanima/dotfiles/pull/98))
- Consolidate ESLint and Pylint configs files ([`aa9b7f2`](https://github.com/mdsanima/dotfiles/commit/aa9b7f23842a53dfaad6d0b53c917f8102cb1dd7))
- Disable terminal GUI color support in nvim theme ([#48](https://github.com/mdsanima/dotfiles/pull/48))
- Enable rerere option in gitconfig ([#81](https://github.com/mdsanima/dotfiles/pull/81))
- Enforce stricter commit message length ([#52](https://github.com/mdsanima/dotfiles/pull/52))
- Enhance Commitlint config and documentation ([#39](https://github.com/mdsanima/dotfiles/pull/39))
- Folding working with vscode neovim plugin ([#86](https://github.com/mdsanima/dotfiles/pull/86))
- Last arg is text on `mdsanima-prints` script ([#30](https://github.com/mdsanima/dotfiles/pull/30))
- Move status bar to the top ([#15](https://github.com/mdsanima/dotfiles/pull/15))
- New `.zshrc` configuration with the new p10k theme prompt ([#27](https://github.com/mdsanima/dotfiles/pull/27))
- Refine `.gitignore` templates for Python and Node ([#63](https://github.com/mdsanima/dotfiles/pull/63))
- Refine color scheme and improve output clarity ([#72](https://github.com/mdsanima/dotfiles/pull/72))
- Refine TMUX configuration files and key bindings ([#107](https://github.com/mdsanima/dotfiles/pull/107))
- Remove banner module ([#57](https://github.com/mdsanima/dotfiles/pull/57))
- Remove the outdated `.dircolors` configuration file ([`607425d`](https://github.com/mdsanima/dotfiles/commit/607425daa788a1a6c20ca32c93aed14d466fa4f3))
- Scheme definition for ColorColumn and scrolloff ([#114](https://github.com/mdsanima/dotfiles/pull/114))
- Set horizontal blinking cursor style at VimLeave ([#25](https://github.com/mdsanima/dotfiles/pull/25))
- Set the default terminal colors and history limit ([#16](https://github.com/mdsanima/dotfiles/pull/16))
- Terminal cursor style blinking-block on tmux ([#116](https://github.com/mdsanima/dotfiles/pull/116))
- Typo and improve module path handling ([#56](https://github.com/mdsanima/dotfiles/pull/56))
- Update `.zshrc` for clarity and compatibility ([#110](https://github.com/mdsanima/dotfiles/pull/110))
- Update PowerShell profile generation and theme path handling ([#50](https://github.com/mdsanima/dotfiles/pull/50))
- Update and cleaning up global Git configuration ([#33](https://github.com/mdsanima/dotfiles/pull/33))
- Update gitignore config for zsh folders and files ([#34](https://github.com/mdsanima/dotfiles/pull/34))
- Update shell script compatibility ([#53](https://github.com/mdsanima/dotfiles/pull/53))
- Update tmux config for better compatibility ([#90](https://github.com/mdsanima/dotfiles/pull/90))
- Update colors configuration for directories and files ([#20](https://github.com/mdsanima/dotfiles/pull/20))

### 📝 Documentation

- Enhance documentation clarity ([#74](https://github.com/mdsanima/dotfiles/pull/74))
- Update installation instruction on README ([#82](https://github.com/mdsanima/dotfiles/pull/82))
- Update project structure with detailed doc ([#70](https://github.com/mdsanima/dotfiles/pull/70))

### 🛁 Refactors

- Improve installation script for PowerShell ([#106](https://github.com/mdsanima/dotfiles/pull/106))
- Move commitlint config file to root ([#117](https://github.com/mdsanima/dotfiles/pull/117))
- Move from `.base` to `templates` directory ([#49](https://github.com/mdsanima/dotfiles/pull/49))
- Move help printing function to `mdsanima-prints` file ([#29](https://github.com/mdsanima/dotfiles/pull/29))
- Move Shell script to `.local/bin` direcotry ([#28](https://github.com/mdsanima/dotfiles/pull/28))
- Move unused dotfiles to `.base` directory ([`49c60f1`](https://github.com/mdsanima/dotfiles/commit/49c60f1a9e1e641a473d694a96e8ea1874ad2006))
- Neovim config and keybinds structure ([#44](https://github.com/mdsanima/dotfiles/pull/44))
- Neovim config into modular files ([#41](https://github.com/mdsanima/dotfiles/pull/41))
- Rename `libmprint.sh` to `libprint.sh` in lib ([#84](https://github.com/mdsanima/dotfiles/pull/84))
- Rename print functions to mprint ([#71](https://github.com/mdsanima/dotfiles/pull/71))
- Rename `_color_print` to `__mds_color_print` function ([#31](https://github.com/mdsanima/dotfiles/pull/31))
- Rename custom bash prompt theme script for devcontainers ([#47](https://github.com/mdsanima/dotfiles/pull/47))
- Reorganize `mdsanima-power` module ([#66](https://github.com/mdsanima/dotfiles/pull/66))
- Reorganize and cleanup project structure ([#54](https://github.com/mdsanima/dotfiles/pull/54))

### 👣 Chore

- Add new SSH alias and refined Neovim configs ([#95](https://github.com/mdsanima/dotfiles/pull/95))
- Enhance `install.sh` robustness and messaging ([#94](https://github.com/mdsanima/dotfiles/pull/94))
- Standardize linting and formatting configs ([#102](https://github.com/mdsanima/dotfiles/pull/102))
- Updat editor config and zsh prompt behavior ([#96](https://github.com/mdsanima/dotfiles/pull/96))
- Update color scheme Neovim configuration ([#112](https://github.com/mdsanima/dotfiles/pull/112))
- Update copyright year ([#67](https://github.com/mdsanima/dotfiles/pull/67))
- Update cursor style to bar blinking when leaving Nvim ([#115](https://github.com/mdsanima/dotfiles/pull/115))
- Update EditorConfig and .gitignore templates ([#101](https://github.com/mdsanima/dotfiles/pull/101))
- Update lint rules to allow inline HTML elements ([#113](https://github.com/mdsanima/dotfiles/pull/113))

### 🚆 CI

- Add new labels for syncing repository workflow ([#99](https://github.com/mdsanima/dotfiles/pull/99))
- Adjust workflows for commitlint and label sync ([#65](https://github.com/mdsanima/dotfiles/pull/65))
- Enable Dependabot for GitHub Actions ([#77](https://github.com/mdsanima/dotfiles/pull/77))
- Migrate commitlint config to JavaScript ([#75](https://github.com/mdsanima/dotfiles/pull/75))
- Refine GitHub label management and descriptions ([#76](https://github.com/mdsanima/dotfiles/pull/76))
- Update Dependabot package ecosystem workflow ([#100](https://github.com/mdsanima/dotfiles/pull/100))

### 🧢 Style

- Clean up config files and rename directory ([#79](https://github.com/mdsanima/dotfiles/pull/79))
- Code formatting for shell script ([#87](https://github.com/mdsanima/dotfiles/pull/87))
- Code formatting on zsh custom theme config ([#111](https://github.com/mdsanima/dotfiles/pull/111))
- Follow the Vim script Style Guide by Google ([#83](https://github.com/mdsanima/dotfiles/pull/83))
- Format markdown documentation files ([#105](https://github.com/mdsanima/dotfiles/pull/105))
- Improve config for editor and markdownlint ([#118](https://github.com/mdsanima/dotfiles/pull/118))
- Improve documentation for Shell Scripts ([#109](https://github.com/mdsanima/dotfiles/pull/109))
- Improve Neovim config and documentations ([#108](https://github.com/mdsanima/dotfiles/pull/108))
- Improve template dotfiles for clang ([#121](https://github.com/mdsanima/dotfiles/pull/121))
- Normalize indentation and update `.editorconfig` ([#43](https://github.com/mdsanima/dotfiles/pull/43))
- Simplify config files and update patterns ([#78](https://github.com/mdsanima/dotfiles/pull/78))
- Update changelog section names for clarity ([#80](https://github.com/mdsanima/dotfiles/pull/80))
- Update color and emoji for zsh theme ([#123](https://github.com/mdsanima/dotfiles/pull/123))
- Update config for changelog generation ([#104](https://github.com/mdsanima/dotfiles/pull/104))
- Update emoji on Changelog section ([#122](https://github.com/mdsanima/dotfiles/pull/122))
- Use the `Shell Style Guide` by Google ([#61](https://github.com/mdsanima/dotfiles/pull/61))

## [0.1.0](https://github.com/mdsanima/dotfiles/releases/tag/v0.1.0) (_2024-01-06_)

This is the first release version of this dotfiles repository with configuration
code that providing a basic setup for the system and development tools.

It includes fundamental setup files such as aliases, shell scripts, and config
settings for _Vim_, _Bash_, _Git_, and _tmux_ multiplexer. Additionally, this
release introduces a changelog template, _GitHub Actions Workflows_, and commit
message linting.

### 🚀 Enhancements

- Add `manifest.json` file for tracking version number ([`7a20273`](https://github.com/mdsanima/dotfiles/commit/7a20273746c86b63c24b702c1b36cb2c6db19608))
- Add alias definition for Bash ([`e0d9df3`](https://github.com/mdsanima/dotfiles/commit/e0d9df36f1d2a8de8aef59265f210c38fc726f1d))
- Add base `CODEOWNERS` file ([`a167154`](https://github.com/mdsanima/dotfiles/commit/a167154c6bcb237d960faf6bdfd58fc6f490ad78))
- Add base configuration for EditorConfig ([`b6cbcec`](https://github.com/mdsanima/dotfiles/commit/b6cbcec4bf73c201267d66b9855420e6194d8e4e)), closes [#10](https://github.com/mdsanima-dev/dotfiles/issues/10)
- Add base directory structure ([`3485acd`](https://github.com/mdsanima/dotfiles/commit/3485acd60bfb3f57bc250e0888a1fec9eabd43e2))
- Add base Oh My Posh theme for PowerShell terminal ([`a2a0b4f`](https://github.com/mdsanima/dotfiles/commit/a2a0b4f4ee3750ddad6048f6c12b8066128270d3))
- Add basic aliases definition ([`2724252`](https://github.com/mdsanima/dotfiles/commit/272425272fe14ef0d7350774a06bd521c75b2a74))
- Add basic configuration for other dotfiles ([`270b8d7`](https://github.com/mdsanima/dotfiles/commit/270b8d76a1de3cffb0cc2454e4ff176bb69bc57d))
- Add basic configuration for p10k prompt style ([`179c80e`](https://github.com/mdsanima/dotfiles/commit/179c80edd341f20ca31c90cdbf9dc0a21e1066ea)), closes [#2](https://github.com/mdsanima-dev/dotfiles/issues/2)
- Add basic configuration for Vim editor ([`9a160c4`](https://github.com/mdsanima/dotfiles/commit/9a160c424f34bada9ddbcab238bfb8cee2d5688f)), closes [#3](https://github.com/mdsanima-dev/dotfiles/issues/3)
- Add basic Shell configuration for Bash ([`40afecf`](https://github.com/mdsanima/dotfiles/commit/40afecfc23fab4aeacce547ed61ecee631a291dd)), closes [#1](https://github.com/mdsanima-dev/dotfiles/issues/1)
- Add basic Shell Script ([`a7cfd88`](https://github.com/mdsanima/dotfiles/commit/a7cfd8807a1cf242fb2cc808a68a588e8d91071b))
- Add basic Shell Script for weather info ([`8089027`](https://github.com/mdsanima/dotfiles/commit/8089027f1c21abcd71e6280ad449b6797ebb6244)), closes [#4](https://github.com/mdsanima-dev/dotfiles/issues/4)
- Add configuration dotfiles for Git ([`404307b`](https://github.com/mdsanima/dotfiles/commit/404307bb5121fde0bf67989f2b191b93122a37b7)), closes [#9](https://github.com/mdsanima-dev/dotfiles/issues/9)
- Add configuration for linting commit messages ([`6643a80`](https://github.com/mdsanima/dotfiles/commit/6643a809b47f3027600d1b26d5e3945b56ada537))
- Add configuration for tmux a terminal multiplexer ([`b5c38ba`](https://github.com/mdsanima/dotfiles/commit/b5c38badcebb7f0c5be40f11b9e1a741df80e81f)), closes [#5](https://github.com/mdsanima-dev/dotfiles/issues/5)
- Add default colors name and code in Shell Script ([`a9da9cc`](https://github.com/mdsanima/dotfiles/commit/a9da9cc7cce6f7e86428eaf78973d06950b3fb7b)), closes [#14](https://github.com/mdsanima-dev/dotfiles/issues/14)
- Add help function for print event log info ([`78ac038`](https://github.com/mdsanima/dotfiles/commit/78ac0387b556e6b0546cd2fd9961bab46b059f72))
- Add help function for printing text in color ([`d4f79f4`](https://github.com/mdsanima/dotfiles/commit/d4f79f494a910c73bd825a7be5e1ed257545deb4))
- Add more colors that match mdsanima default colors palette ([`309faa5`](https://github.com/mdsanima/dotfiles/commit/309faa52990c8586f4a729b44d81be141d1b67f0))
- Add new configuration for ignore files and EditorConfig ([`b1116c2`](https://github.com/mdsanima/dotfiles/commit/b1116c27362bbeb74157dead0bffeeded22445e8))
- Add PowerShell installation script for Windows system ([`f2b15c1`](https://github.com/mdsanima/dotfiles/commit/f2b15c1ce4cfb83ce742c54da80253e04f68e6ab)), closes [#8](https://github.com/mdsanima-dev/dotfiles/issues/8)
- Add template file for changelog generation ([`09d17e6`](https://github.com/mdsanima/dotfiles/commit/09d17e64902b5beb54eb95a61c807c581afcf698))
- Add template YAML files for GitHub Actions Workflow ([`1b3d580`](https://github.com/mdsanima/dotfiles/commit/1b3d58050b4c6f71e380f74329c1090896e395fc))
- Enable Vim motion support for tmux ([`0ac5611`](https://github.com/mdsanima/dotfiles/commit/0ac5611141c4d414ce1b2966854496b78b0965b8))

### 🧪 Fixes

- Change function names on Shell Scripts to more friendly ([`686bba7`](https://github.com/mdsanima/dotfiles/commit/686bba73f21357d3159d53595d9fafd73a089d2a))
- Change types section with new emojis and names ([`6a1629e`](https://github.com/mdsanima/dotfiles/commit/6a1629e18f7d1c328f3ce4c2406cbef88ca734e2))
- Eslint configuration header and parser options ([`4f294c3`](https://github.com/mdsanima/dotfiles/commit/4f294c3f1ee5da86851f607b5067cd2334c4a150))
- Update comments typo ([`dbc8886`](https://github.com/mdsanima/dotfiles/commit/dbc8886eeba4e8ce897fa5272f59a42341c33298))
- Update configuration and removed unused stuff ([`7ed14b6`](https://github.com/mdsanima/dotfiles/commit/7ed14b6a0d944352757e9c0b9f740b572e413f05))
- Update history setting for Zsh ([`7668303`](https://github.com/mdsanima/dotfiles/commit/7668303fceb2eea56db384eb7959472d5dc736fa))
- Update TypeScript and yarn files to ignore ([`e07a751`](https://github.com/mdsanima/dotfiles/commit/e07a751ed09c0770d7fe508218d19de3a75eeb7d))

### 📝 Documentation

- Add instruction for installation ([`0b19efe`](https://github.com/mdsanima/dotfiles/commit/0b19efe1fa0189855303e1397082e9fd06f5157f))
- Add instruction for installation on Linux terminal ([`72a67ae`](https://github.com/mdsanima/dotfiles/commit/72a67ae404801a6f7461abdb75f16f1056972b0c))
- Update description information for the configuration ([`263f89e`](https://github.com/mdsanima/dotfiles/commit/263f89ec7db3058ff4febc09f223c15d7eaf4782))

### 🛁 Refactors

- Move `bin` Shell Scripts directory to root ([`ff09b02`](https://github.com/mdsanima/dotfiles/commit/ff09b02556993228f7b5166758dfce492f9d77b1))
- Rename folder for feature ideas ([`b86c599`](https://github.com/mdsanima/dotfiles/commit/b86c5991eae09f789853cc689894fb98aed0928a))
- Rename function names in installation Shell Script ([`b57c727`](https://github.com/mdsanima/dotfiles/commit/b57c727b3f20300096e3f1d975913e2bfac51036))
- Rename the Shell Script and deleted unused directory ([`bbbe430`](https://github.com/mdsanima/dotfiles/commit/bbbe430bb97acacdaf94f919589357439f6bf70a))
- Rename YAML files from .yaml to .yml in workflows ([`a01d05b`](https://github.com/mdsanima/dotfiles/commit/a01d05bc9c60c07c2fb50dbe1d6f2e280484d667))

### 🎳 Tests

- **commitlint:** Change subject-case rule to sentence-case ([`b24338d`](https://github.com/mdsanima/dotfiles/commit/b24338db26826331a01802882c11145a33fcba96))
- Update copyright notice ([`05708a2`](https://github.com/mdsanima/dotfiles/commit/05708a2603826118a7310bd05d013b972513a75e))
- Update year and name on license file ([`963227e`](https://github.com/mdsanima/dotfiles/commit/963227e2a58ee471ba5bd37e50839e935ce5e5a1))

### 💼 Build

- **deps:** Bump ghaction-github-labeler from 3.2.0 to 5.0.0 ([`5e8af8d`](https://github.com/mdsanima/dotfiles/commit/5e8af8d4554cad52feb8f8bedb779b6c08805541))

### 🚆 CI

- Add fetch-depth option and fixed paths for Sync Labels ([`f7fec60`](https://github.com/mdsanima/dotfiles/commit/f7fec6044c01a8efca98fca0645c2dbd6ca6dfb2))
- Add names for job steps ([`d6d3d20`](https://github.com/mdsanima/dotfiles/commit/d6d3d207c7d819ec469e82a51070f702bcdacdc4))
- Fix fetch-depth option for syncing labels ([`2d18d09`](https://github.com/mdsanima/dotfiles/commit/2d18d09b1afe59b08fe095734f7f7c83daa17992))
- Update the paths for labels ([`b7e1335`](https://github.com/mdsanima/dotfiles/commit/b7e1335236525806c7c28751c24ab3c899f01820))
