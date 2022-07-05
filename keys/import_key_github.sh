#!/bin/bash

set -x

die() {
  echo "$*" >&2
  exit 1
}

# fetch https://api.github.com/users/{username}/gpg_keys
get_github_json() {
  username="$1"
  # shellcheck disable=SC2046
  curl $(github_auth_header) "https://api.github.com/users/$username/gpg_keys"
}

check_github_user() {
  username="$1"
  # bypass API check
  # shellcheck disable=SC2046
  curl --head "https://github.com/$username" \
    | head -n 1 \
    | grep '200'
}

github_auth_header() {
  if [ -z "$GITHUB_TOKEN" ]; then
    echo -n "-H 'Authorization: $GITHUB_TOKEN'"
  else
    echo -n ""
  fi
}

read -p "GitHub user name: " -r username
if check_github_user "$username"; then
  [ ! -d "$username" ] && mkdir "$username"
  get_github_json "$username" | jq -r '.[0].raw_key' >"${username}/${username}_pub"
else
  die "Specified user ($username) could not be found. Please check input."
fi
