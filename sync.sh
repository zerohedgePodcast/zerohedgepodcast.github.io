#!/bin/bash

# Confirm with user
if (( $# < 2 )); then
	read -n 1 -p "Push to GitHub? (enter or ctrl+c):" input
else
	if (( $2 != "auto" )); then
		read -n 1 -p "Push to GitHub? (enter or ctrl+c):" input
	fi
fi

#Perform git commit/push

# If a command fails then the deploy stops
set -e
if [[ `git status --porcelain` ]]; then
	printf "\033[0;32mDeploying updates to GitHub B)\033[0m\n"

	# Add changes to git
	git add -A

	# Commit changes
	msg="rebuilding site $(date)"
	if [ -n "$*" ]; then
		msg="$*"
	fi
	git commit -m "$msg"

	# Push source
	git push
else
	printf "\033[0;32mNo changes to deploy ;)\033[0m\n"
fi
