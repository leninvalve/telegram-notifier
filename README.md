# Telegram notifier
Send messages from Debian to Telegram app. Zero dependencies.

## Requirements
1. curl installed.
2. token (provided by Telegram).
3. chat_id (provided by Telegram).
4. ~/.telegram (with above information). Example of ~/.telegram file:
```bash
_TG_TOKEN="7873824:ASDD..."
_TG_CHAT_ID="2738781"

~/.telegram must have 0600 permissions.

