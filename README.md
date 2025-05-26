# Starting Point

A clean starting point for new projects with pre-configured GitHub Actions workflows and Windsurf rules integration. This template provides a solid foundation for your projects with automated workflows for PR validation, semantic versioning enforcement, and more.

## 🚀 Features

- **GitHub Actions Workflows**
  - Semantic PR title validation
  - Automated version bumping based on conventional commits
  - Automated PR creation for version bumps
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
- `npm run test:workflows:semantic` - Test semantic PR check with minor version bump
- `npm run test:workflows:semantic:major` - Test semantic PR check with major version bump
- `npm run test:workflows:semantic:minor` - Test semantic PR check with minor version bump
- `npm run test:workflows:semantic:patch` - Test semantic PR check with patch version bump
- `npm run test:workflows:semantic:invalid` - Test semantic PR check with invalid PR title
- `npm run test:workflows:merge` - Test merge workflow

## 🤖 GitHub Actions

This repository includes the following GitHub Actions workflows:

- **Semantic PR Check**: Validates PR titles against conventional commit messages
- **Main Merge**: Handles version bumping and changelog generation on merge to main

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

The template includes two main workflows:

1. **Semantic PR Check** (`.github/workflows/semantic-pr-check.yml`)
   - Validates that PR titles follow conventional commit format
   - Customize validation rules if needed

2. **Main Merge** (`.github/workflows/main-merge.yml`)
   - Automatically creates version bump PRs after merges to main
   - Adjusts version based on commit type (feat, fix, etc.)
   - Customize the version bump behavior if needed

## 🙏 Acknowledgments

- [act CLI tool](https://github.com/nektos/act) for local GitHub Actions testing
