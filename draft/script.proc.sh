
# (dash) $ sh -c "proc --test"
## SCRIPT: 
### PID
: '
cmdline: /bin/sh ./proc --test
comm: sh
exe: /usr/bin/dash
Name: sh
'
### PPID
: '
cmdline: sh -c proc --test 
comm: sh
exe: /usr/bin/dash
Name: sh
'
## SCRIPT: #!/bin/sh
### PID
: '
cmdline: /bin/sh ./proc --test
comm: proc
exe: /usr/bin/dash
Name: proc
'
### PPID
: '
cmdline: sh -c proc --test
comm: sh
exe: /usr/bin/dash
Name: sh
'
## SCRIPT: #!/bin/bash
### PID
: '
cmdline: /bin/bash ./proc --test
comm: proc
exe: /usr/bin/bash
Name: proc
'
### PPID
: '
cmdline: sh -c proc --test
comm: sh
exe: /usr/bin/dash
Name: sh
'
## SCRIPT: #!/usr/bin/env bash
### PID
: '
cmdline: bash ./proc --test
comm: bash
exe: /usr/bin/bash
Name: bash
'
### PPID
: '
cmdline: sh -c proc --test 
comm: sh
exe: /usr/bin/dash
Name: sh
'

# (dash) $ proc --test
## SCRIPT: 
### PID
: '
cmdline: /bin/sh ./proc --test
comm: sh
exe: /usr/bin/dash
Name: sh
'
### PPID
: '
cmdline: sh -c proc --test 
comm: sh
exe: /usr/bin/dash
Name: sh
'
## SCRIPT: #!/bin/sh
### PID
: '
cmdline: /bin/sh ./proc --test
comm: proc
exe: /usr/bin/dash
Name: proc
'
### PPID
: '
cmdline: sh -c proc --test 
comm: sh
exe: /usr/bin/dash
Name: sh
'
## SCRIPT: #!/bin/bash
### PID
: '
cmdline: /bin/bash ./proc --test
comm: proc
exe: /usr/bin/bash
Name: proc
'
### PPID
: '
cmdline: sh -c proc --test
comm: sh
exe: /usr/bin/dash
Name: sh
'
## SCRIPT: #!/usr/bin/env bash
### PID
: '
cmdline: bash ./proc --test
comm: bash
exe: /usr/bin/bash
Name: bash
'
### PPID
: '
cmdline: sh -c proc --test 
comm: sh
exe: /usr/bin/dash
Name: sh
'