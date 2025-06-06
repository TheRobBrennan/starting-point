# Contributing to Starting Point

Thank you for considering a contribution! This project uses signed commits and conventional commit messages. Please follow the guidelines below when opening pull requests.

## Setting Up GPG Commit Signing

1. **Create or Import a Key**
   - Generate a new GPG key or import an existing one. GitHub provides a [quick start guide](https://docs.github.com/authentication/managing-commit-signature-verification/generating-a-new-gpg-key) if you need help.
2. **Configure Git to Use Your Key**
   ```bash
   git config --global user.signingkey YOUR_KEY_ID
   git config --global commit.gpgsign true
   ```
3. **Publish the Public Key to GitHub**
   - Upload your public key under **Settings → SSH and GPG keys** so that commits appear as "Verified".

All commits pushed to this repository must be GPG signed. Use `git commit -S` if automatic signing is disabled.

## Development Workflow

1. **Fork and Branch**
   - Create a feature branch off `main` for your work.
2. **Follow Conventional Commits**
   - Use the format `type(scope): message` for commit titles and PR titles.
   - Examples: `feat(ui): add login form`, `fix(api): handle 500 error`.
3. **Run Tests**
   - Execute `npm test` before opening a pull request. Tests rely on [act](https://github.com/nektos/act) and Docker.
4. **Open a Pull Request**
   - Fill out the provided PR template.
   - Ensure your commits are signed and all checks pass.

We appreciate all issues and PRs! For more details on local workflow testing see [`.github/docs/TESTING.md`](.github/docs/TESTING.md).
