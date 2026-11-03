#!/usr/bin/bash
set -euo pipefail

SECRETS_FILE="$HOME/.telegram"

[[ -r "$SECRETS_FILE" ]] || { echo "Unable to read secrets file. Bye." >&2; exit 1; }

source "$SECRETS_FILE"

send_tg() {
	local message="${1:-}"
	curl -sS --connect-timeout 5 --max-time 15 --retry 2 \
		-X POST "https://api.telegram.org/bot${_TG_TOKEN}/sendMessage" \
		-d chat_id="$_TG_CHAT_ID" \
		-d text="$message" \
		-d parse_mode="Markdown" > /dev/null
}

send_tg "$1"
