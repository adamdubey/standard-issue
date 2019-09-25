# Private npm package development reference

Outlined is the procedures and guidelines for private npm package development. As once part of an old dev crew I served with, this has served us well and continues to be a part of my routine process whenever I am developing npm packages. This is a refactored version, very similar to the original guideline manual that was once used with my old dev crew.

A Web Development team should embrace the software programming ideals behind the old [Unix philosophy](https://en.wikipedia.org/wiki/Unix_philosophy). You should strive to build short, clear, modular, reusable, composable, and extensible code whenever possible.

The best way to realize such ideals is by taking full advantage of npm by using npm for importing 3rd-party open-source packages. It is also used to manage and host one’s own internal shared libraries as private npm packages.

## Setup

Clone the project repository run `npm install`.

```sh
git clone https://github.com/<user-name>/<project>.git
cd <project>/
npm install
```

You’ll also need to set up the `NPM_TOKEN` environment variable, which holds the npm access token used for reading packages from, and publishing package to, your npm organization.

## Workflow

Follow the typical development workflow and conventions (i.e., create a branch, make changes, run unit tests, iterate, submit a PR, get a code review, iterate, merge into master upon approval, etc.)


## Build & Publish

Assuming you’ve followed the usual development workflow, and your changes have been merged into the master branch, create a new task and task branch (e.g., T123), name the task the same as the version being published (e.g. “0.12.0”), checkout the branch, follow the steps below to publish a new version of a private npm package.

```sh
$ npm test
# If there are tests, ALL must pass!

$ npm version <segment>
# This bumps the version and creates a git tag for you

$ npm run build
# This compiles into the lib/ directory using Babel

$ npm publish
# This publishes to npm repo (using our npm credentials)

$ git push --all --follow-tags
# This pushes up the git tag that was created by `npm version`
```

Once this is done, you’ll need to open a PR just like you would for any other change. Get the PR approved. Note: the diff should be extremely simple -- just the version in package.json should change. Once its been approved, merge the PR into master.
Which version segment to bump?
Best to use Semantic Versioning for shared libraries.

Given a version number MAJOR.MINOR.PATCH, increment the:

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backwards-compatible manner
- **PATCH** version when you make backwards-compatible bug fixes.

In other words...

Bump the **MAJOR** version segment whenever you make a backwards-incompatible change to the interface of any utility defined in the library to be published (e.g., changing method or function signatures, changing input types, changing return value types, removing public methods or classes, changing the name or location of methods or classes, etc.).
 npm version major

Bump the **MINOR** version segment whenever you make a backwards-compatible change to the library that's more than just a bug fix (e.g., add new methods or classes, change or refactor internal implementation details, etc.).
 npm version minor

Bump the **PATCH** version segment whenever you fix a bug in a backwards-compatible manner and are not making any other changes to the library.
 npm version patch

**NOTE:** Updating npm dependencies that the library uses constitutes at minimum a MINOR version bump. If changing a dependency leads to further interface-level changes or breaking side-effects, then it may constitute a MAJOR version bump.

## Private npm Credentials

In order to publish/install private packages to/from your npm organization, you must provide valid credentials via the `NPM_TOKEN` environment variable. Make sure to export it from your `~/.bash_profile.`

**The one shown below is merely an example.**

`export NPM_TOKEN=28755d0b-ac16-5e5e-045f-70249a13ae75`

**WARNING: Do NOT commit the NPM_TOKEN value. It should be kept confidential.**
