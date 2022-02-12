#!/bin/sh

# (dash) $ 
## SOURCE: . ./proc --test
### PID
: '
0: main
_: --test
cmdline: /usr/bin/zsh 
comm: zsh
exe: /usr/bin/zsh
cwd: /home/j5pu/monoJS/examples
Name: zsh
'
### PPID
: '
_: --test
cmdline: /usr/share/code/code ...
comm: code
exe: /usr/share/code/code
cwd: /home/j5pu
Name: code
'
## SOURCE: sh -c ". ./proc --test"
### PID
: '
0: sh
_: /usr/bin/sh
cmdline: sh -c . ./proc --test 
comm: sh
exe: /usr/bin/dash
cwd: /home/j5pu/monoJS/examples
Name: sh
'
### PPID
: '
_: /usr/bin/sh
cmdline: /usr/bin/zsh 
comm: zsh
exe: /usr/bin/zsh
cwd: /home/j5pu/monoJS/examples
Name: zsh
'
## SOURCE: bash -c ". ./proc --test"
### PID
: '
0: bash
_: /usr/bin/bash
cmdline: bash -c . ./proc --test 
comm: bash
exe: /usr/bin/bash
cwd: /home/j5pu/monoJS/examples
Name: bash
'
### PPID
: '
_: /usr/bin/bash
cmdline: /usr/bin/zsh 
comm: zsh
exe: /usr/bin/zsh
cwd: /home/j5pu/monoJS/examples
Name: zsh
'
## SOURCE: zsh -c ". ./proc --test"
### PID
: '
0: main
_: --test
cmdline: zsh -c . ./proc --test 
comm: zsh
exe: /usr/bin/zsh
cwd: /home/j5pu/monoJS/examples
Name: zsh
'
### PPID
: '
_: --test
cmdline: /usr/bin/zsh 
comm: zsh
exe: /usr/bin/zsh
cwd: /home/j5pu/monoJS/examples
Name: zsh
'
## SOURCE: dash -c ". ./proc --test"
### PID
: '
0: dash
_: /usr/bin/dash
cmdline: dash -c . ./proc --test 
comm: dash
exe: /usr/bin/dash
cwd: /home/j5pu/monoJS/examples
Name: dash
'
### PPID
: '
_: /usr/bin/dash
cmdline: /usr/bin/zsh 
comm: zsh
exe: /usr/bin/zsh
cwd: /home/j5pu/monoJS/examples
Name: zsh
'
