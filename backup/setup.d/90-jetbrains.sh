#!/bin/sh

set -eu

cd "$(dirname "$0")"

export SETUP="${PWD}"
export PATH="${SETUP}/lib:${PATH}"
. system.sh
echo $DIST_ID_LIKE $VGA
XDG_CONFIG_HOME=""gg
JETBRAINS="$(git -C "${SETUP}" rev-parse --show-toplevel "$0")"
echo $JETBRAINS
profile="$(cat <<EOT
export JETBRAINS='${JETBRAINS}'
export JETBRAINS_APPS='DataGrip GoLand Idea PyCharm RubyMine WebStorm'
export JETBRAINS_CONFIG='${JETBRAINS}/config'

export DATAGRIP='${JETBRAINS}/DataGrip'
export DATAGRIP_PROPERTIES='${DATAGRIP}/idea.properties'
export DATAGRIP_VM_OPTIONS='${DATAGRIP}/datagrip.vmoptions'

export GOLAND='${JETBRAINS}/GoLand'
export GOLAND_PROPERTIES='${GOLAND}/idea.properties'
export GOLAND_VM_OPTIONS='${GOLAND}/goland.vmoptions'

export IDEA='${JETBRAINS}/Idea'
export IDEA_PROPERTIES='${IDEA}/idea.properties'
export IDEA_VM_OPTIONS='${IDEA}/idea.vmoptions'

export PYCHARM='${JETBRAINS}/PyCharm'
export PYCHARM_PROPERTIES='${PYCHARM}/idea.properties'
export PYCHARM_VM_OPTIONS='${PYCHARM}/pycharm.vmoptions'

export RUBYMINE='${JETBRAINS}/RubyMine'
export RUBYMINE_PROPERTIES='${RUBYMINE}/idea.properties'
export RUBYMINE_VM_OPTIONS='${RUBYMINE}/rubymine.vmoptions'

export WEBSTORM='${JETBRAINS}/WebStorm'
export WEBIDE_PROPERTIES='${WEBSTORM}/idea.properties'
export WEBIDE_VM_OPTIONS='${WEBSTORM}/webstorm.vmoptions'

#export PATH=
EOT
)"
