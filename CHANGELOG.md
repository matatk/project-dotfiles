# Change log

## [2.0.0](https://github.com/matatk/project-dotfiles/compare/v1.1.0...v2.0.0) (2022-10-10)


### ⚠ BREAKING CHANGES

* The stamp file has been renamed simply `.project-dotfiles` (was `.project-dotfiles-version`), to make directory listings neater.
* Projects should swap `.versionrc.json` for `.release-it.json`. Also, until conventional-changelog/conventional-changelog#940 is resolved, and release-it/conventional-changelog#54 by extension, the following is needed in `package.json`:

```json
"overrides": {
  "conventional-changelog-conventionalcommits": ">=5.0.0"
}
```

### Features

* **ESlint:** More rules (language; spacing; sorting) ([0b82b20](https://github.com/matatk/project-dotfiles/commit/0b82b2000a6aebb2d132ac893490becf721edc99))
* Swap standard-version for release-it ([c96f23a](https://github.com/matatk/project-dotfiles/commit/c96f23aeb5f833158682e26d4bcf0399e0968ea5))


### Bug fixes

* Stop modifying package-lock.json ([88004ed](https://github.com/matatk/project-dotfiles/commit/88004ed552a544f439f75d80604ff204aab18ebb))


### Chores

* **Dependencies:** bumps ([b5714fc](https://github.com/matatk/project-dotfiles/commit/b5714fce77793f49ec812689da785243e5c011df))
* Swap EditorConfig linter; Bump dependencies ([3a0d261](https://github.com/matatk/project-dotfiles/commit/3a0d261bbd54881c1115c6a41aa9df93531a7284))


### Styles

* Rename stamp file ([d6e79d3](https://github.com/matatk/project-dotfiles/commit/d6e79d3ba7ed4dd836ae1c8e991176835c92eebe))


### Builds

* Add setup-* shortcuts to Makefile ([e927fa5](https://github.com/matatk/project-dotfiles/commit/e927fa5b2795ef9788f763330f6b74fa4fb8e959))
* Clean the repo after linking the bin ([a8b162a](https://github.com/matatk/project-dotfiles/commit/a8b162ab6f4f2dc7f3bd4b94fedcf14f4de2bf1a))
* **Install:** Ensure existing script is removed first ([12fa1bf](https://github.com/matatk/project-dotfiles/commit/12fa1bf39709ecf7f078bf71b04975c71e15b9a5))


### Documentation

* Update CHANGELOG header ([e993a36](https://github.com/matatk/project-dotfiles/commit/e993a36780a35726150912c4232378ce080b13b2))

## [1.1.0](https://github.com/matatk/project-dotfiles/compare/v1.0.0...v1.1.0) (2019-09-06)


### Bug fixes

* Use latest ES version that Node 10 supports ([7a54385](https://github.com/matatk/project-dotfiles/commit/7a54385)), closes [/node.green/#ES2018](https://github.com/matatk//node.green//issues/ES2018)


### Builds

* Set package to being private ([2bccf9a](https://github.com/matatk/project-dotfiles/commit/2bccf9a))


### Chores

* Bumps within dependencies ([b2634e5](https://github.com/matatk/project-dotfiles/commit/b2634e5))


### Features

* Sort JSON files before committing ([e06bca0](https://github.com/matatk/project-dotfiles/commit/e06bca0))
* Use ESLint "reportUnusedDisableDirectives" setting ([c13d570](https://github.com/matatk/project-dotfiles/commit/c13d570))

## 1.0.0 (2019-09-01)


### Features

* dotfile management functions; standard dotfiles ([024f93e](https://github.com/matatk/project-dotfiles/commit/024f93e))