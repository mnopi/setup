#!/bin/sh

watchman -j <<-EOT
["trigger", "$(dirname "$0")", {
  "name": "setup",
  "command": ["git", "all"]
}]
EOT
