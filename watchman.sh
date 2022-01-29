#!/bin/sh

directory="$(dirname "$0")"
watchman get-config "${directory}"
# watchman --logfile=/tmp/setup.log --log-level 2
watchman watch-del-all
watchman watch-del "${directory}"

watchman  -j <<-EOT
["trigger", "${directory}", {
  "append_files": false,
  "command": ["git", "all"],
  "ignore_dirs" : [".git"],
  "name": "setup"
}]
EOT

watchman watch-list
watchman trigger-list "${directory}"
tail -f "$(dirname "$(watchman get-sockname | jq -r .sockname)")/log"
