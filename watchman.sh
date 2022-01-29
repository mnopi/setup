#!/bin/sh

directory="$(dirname "$0")"
watchman get-config "${directory}"
# watchman --logfile=/tmp/setup.log --log-level 2
watchman watch-del "${directory}"
watchman watch-project "${directory}"
watchman -- trigger "${directory}" 'setup' -- git all
watchman --respawn-on-file-changes -j <<-EOT
["trigger", "${directory}", {
  "append_files": false,
  "name": "setup",
  "command": ["git", "all"],
  "ignore_dirs" : [".git"]
}]
EOT
watchman watch-list
watchman trigger-list "${directory}"
tail -f "$(dirname "$(watchman get-sockname | jq -r .sockname)")/log"
