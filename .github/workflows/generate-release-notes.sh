#!/bin/bash

# Get the latest git tag (assumes tags are used for releases)
latest_tag=$(git describe --tags --abbrev=0)

# Get the commit messages since the last release
commit_messages=$(git log --pretty=format:"%s" ${latest_tag}..HEAD)

# Write the release notes to a file
echo "Release Notes:" > release-notes.txt
echo "${commit_messages}" >> release-notes.txt

# Optional: You might want to format the commit messages or perform additional processing here
# For example, you could filter out merge commits or reformat the messages for better readability

echo "Release notes generated successfully!"
