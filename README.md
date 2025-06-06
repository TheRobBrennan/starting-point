# Starting Point

A clean starting point for new projects with pre-configured GitHub Actions workflows and Windsurf rules integration. This template provides a solid foundation for your projects with automated workflows for PR validation, semantic versioning enforcement, and more.

## 🚀 Features

- **GitHub Actions Workflows**
  - PR title validation
  - Automated version bumping based on conventional commits
  - Automated PR creation for version bumps
  - GitHub Container Registry (GHCR) cleanup
- **Windsurf Rules Integration**
  - Documentation standards
  - Git workflow guidelines
  - Project structure templates
- **Development Tools**
  - Local workflow testing with [act CLI](https://github.com/nektos/act)
  - Semantic versioning enforcement
  - Conventional commit standards

## 🛠️ Prerequisites

- Node.js 20.0.0 or later
- npm
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [act CLI tool](https://github.com/nektos/act) (for local GitHub Actions and Workflow testing in isolated Docker containers)

## 🚦 Getting Started

1. **Clone the repository**

   ```bash
   git clone https://github.com/TheRobBrennan/starting-point.git
   cd starting-point
   ```

## 🧪 Testing Workflows

This project includes GitHub Actions workflows that can be tested locally using the [act CLI tool](https://github.com/nektos/act).

### Available Test Commands

- `npm test` - Run all workflow tests
- `npm run test:workflows` - Test all workflows
- `npm run test:workflows:pr-title` - Test PR title check with minor version bump
- `npm run test:workflows:pr-title:major` - Test PR title check with major version bump
- `npm run test:workflows:pr-title:minor` - Test PR title check with minor version bump
- `npm run test:workflows:pr-title:patch` - Test PR title check with patch version bump
- `npm run test:workflows:pr-title:invalid` - Test PR title check with invalid PR title
- `npm run test:workflows:version-bump` - Test version bump workflow
- `npm run test:workflows:ghcr-cleanup` - Test GHCR cleanup workflow

## 🤖 GitHub Actions

This repository includes the following GitHub Actions workflows:

- **PR Title Check**: Validates PR titles against conventional commit messages
- **Version Bump**: Handles version bumping and changelog generation on merge to main
- **GHCR Cleanup**: Automatically cleans up old GitHub Container Registry images

## 📋 Using This Template

### Getting Started with Your New Project

1. **Create a new repository from this template**
   - Click the "Use this template" button on GitHub, or
   - Clone this repository and push it to a new repository

2. **Customize the template for your project**
   - Update the `package.json` with your project details
   - Modify the README.md to describe your project
   - Adjust the Windsurf rules in `.windsurf/rules/` to match your project's needs

3. **Start developing**
   - Add your project files
   - Use the pre-configured GitHub workflows for PR validation and versioning

### Customizing GitHub Workflows

The template includes three main workflows:

1. **PR Title Check** (`.github/workflows/pr-title-check.yml`)
   - Validates that PR titles follow conventional commit format
   - Customize validation rules if needed

2. **Version Bump** (`.github/workflows/version-bump.yml`)
   - Automatically creates version bump PRs after merges to main
   - Adjusts version based on commit type (feat, fix, etc.)
   - Customize the version bump behavior if needed

3. **GHCR Cleanup** (`.github/workflows/ghcr-cleanup.yml`)
   - Automatically cleans up old GitHub Container Registry images
   - Configurable to keep a certain number of recent versions
   - Can be run manually or on a schedule

## 🙏 Acknowledgments

- [act CLI tool](https://github.com/nektos/act) for local GitHub Actions testing
