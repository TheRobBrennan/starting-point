#!/bin/bash

# Function to clean up orphaned act containers
cleanup_act_containers() {
  echo "🧹 Cleaning up act containers..."
  orphaned_containers=$(docker ps -a | grep act | awk '{print $1}')
  if [ -n "$orphaned_containers" ]; then
    echo "Found orphaned containers: $orphaned_containers"
    docker rm -f $orphaned_containers
    echo "✅ Containers removed successfully"
  else
    echo "No orphaned containers found"
  fi
  echo ""
}

# Clean up any existing act containers before starting tests
cleanup_act_containers

echo "🧪 Testing GitHub Actions workflows..."
echo ""

echo "📋 Testing Semantic PR Check workflow..."
echo ""

echo "1. Testing major version bump (breaking change)..."
act pull_request -e .github/test-data/pr-events/major.json -W .github/workflows/semantic-pr-check.yml --container-architecture linux/amd64
cleanup_act_containers
echo ""

echo "2. Testing minor version bump (new feature)..."
act pull_request -e .github/test-data/pr-events/minor.json -W .github/workflows/semantic-pr-check.yml --container-architecture linux/amd64
cleanup_act_containers
echo ""

echo "3. Testing patch version bump (fix)..."
act pull_request -e .github/test-data/pr-events/patch.json -W .github/workflows/semantic-pr-check.yml --container-architecture linux/amd64
cleanup_act_containers
echo ""

echo "4. Testing invalid PR format..."
act pull_request -e .github/test-data/pr-events/invalid.json -W .github/workflows/semantic-pr-check.yml --container-architecture linux/amd64
cleanup_act_containers
echo ""

echo "🔄 Testing Version Bump workflow..."
echo ""
echo "Note: The following tests will show authentication errors - this is expected behavior when testing locally"
echo "These operations require the GitHub Actions environment and will work properly when running in GitHub"
echo ""

echo "Testing merge commit message parsing..."
act push -e .github/test-data/pr-events/merge.json -W .github/workflows/main-merge.yml --container-architecture linux/amd64 -s GITHUB_TOKEN="test-token" -s GPG_PRIVATE_KEY="test-key" -s GPG_PASSPHRASE="test-passphrase"
cleanup_act_containers
echo ""

# Add test for our new GPG signing functionality
echo "Testing GPG signing with GitHub Actions bot..."
echo "Note: GPG signing tests will fail locally - this is expected"
act push -e .github/test-data/pr-events/merge-bot-signed.json -W .github/workflows/main-merge.yml --container-architecture linux/amd64 -s GITHUB_TOKEN="test-token" -s GPG_PRIVATE_KEY="test-key" -s GPG_PASSPHRASE="test-passphrase"
cleanup_act_containers
echo ""

# Final cleanup to ensure no containers are left behind
cleanup_act_containers