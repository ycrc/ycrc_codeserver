#!/usr/bin/env bash

# Export the module function if it exists
[[ $(type -t module) == "function" ]] && export -f module

# Find available port to run server on
port=$(find_port)
PORT="$port"
export port PORT

# Export compute node the script is running on
host="$(hostname)"
HOST="$host"
export host HOST

# Generate SHA1 encrypted password (requires OpenSSL installed)
password="$(create_passwd 16)"
PASSWORD="$password"
export password PASSWORD

# Setup TMPDIR
TMPDIR="$(mktemp -d)"
export TMPDIR

# Fix XDG Run Time
XDG_RUNTIME_DIR="$TMPDIR"
export XDG_RUNTIME_DIR

# Load Form Information
OOD_SR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
if [ -f "${OOD_SR}/form.sh" ]; then
	# shellcheck disable=SC1090,SC1091
	source "${OOD_SR}/form.sh"
fi
unset OOD_SR
