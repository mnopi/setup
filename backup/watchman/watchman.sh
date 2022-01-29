#!/bin/sh

directory="$(dirname "$0")"
watchman get-config "${directory}"
# watchman --logfile=/tmp/setup.log --log-level 2
watchman watch-del-all
watchman watch-del "${directory}"
# watchman watch-project "${directory}"

# simple command sets always append files to true with stdin having a list and fails with git
# watchman -- trigger "${directory}" 'setup' -- git all

watchman  -j <<-EOT
["trigger", "${directory}", {
  "append_files": true,
  "chdir": "${directory}", 
  "command": ["${directory}/show.sh"],
  "ignore_dirs" : [".git"],
  "name": "setup",
  "stdin": ["name"]
}]
EOT

watchman watch-list
watchman trigger-list "${directory}"
tail -f "$(dirname "$(watchman get-sockname | jq -r .sockname)")/log"
