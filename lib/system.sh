#!/bin/sh

# : "${BINPM?"undefined: '/etc/profile' needs to be sourced"}"

[ "${UNAME-}" ] || {

# '1' if 'DIST_ID' is 'alpine' and not: nix or busybox
#
export ALPINE

# '1' if 'DIST_ID' is 'alpine'
#
export ALPINE_LIKE

# '1' if 'DIST_ID' is 'arch' for archlinux
#
export ARCH

# <html><h2>Installation Directory for Bats and Bats Libraries</h2>
# <p><strong><code>$BATS</code></strong> contains the installation directory.</p>
# </html>
export BATS

# <html><h2>Bats Core Installation Directory</h2>
# <p><strong><code>$BATS_CORE</code></strong> contains the bats core repository installation path.</p>
# </html>
export BATS_CORE

# '1' if not '/etc/os-release' and not '/sbin'.
#
export BUSYBOX

# '1' if 'DIST_ID' is 'centos'.
#
export CENTOS

# Command Line Tools Usr Directory (xcode-select -p).
#
export CLT

# '1' if running in docker container.
    #
export CONTAINER

# '1' if 'DIST_ID' is 'debian'.
#
export DEBIAN

# 'noninteractive' if 'IS_CONTAINER' and 'DEBIAN_LIKE' are set.
    #
export DEBIAN_FRONTEND

# '1' if 'DIST_ID_LIKE is 'debian'.
#
export DEBIAN_LIKE

# <html><h2>Distribution Codename</h2>
# <p><strong><code>$DIST_CODENAME</code></strong> (always exported).</p>
# <ul>
# <li><code>Catalina</code></li>
# <li><code>Big Sur</code></li>
# <li><code>kali-rolling</code></li>
# <li><code>focal</code></li>
# <li><code>etc.</code></li>
# </ul>
# </html>
export DIST_CODENAME

# <html><h2>Distribution ID</h2>
# <p><strong><code>$DIST_ID</code></strong> (always exported).</p>
# <ul>
# <li><code>alpine</code></li>
# <li><code>centos</code></li>
# <li><code>debian</code></li>
# <li><code>kali</code></li>
# <li><code>macOS</code></li>
# <li><code>ubuntu</code></li>
# </ul>
# </html>
export DIST_ID

# <alpine|debian|rhel fedora>.
#
export DIST_ID_LIKE

# '1' if 'DIST_ID' is unknown.
#
export DIST_UNKNOWN

# <html><h2>Distribution Version</h2>
# <p><strong><code>$DIST_ID</code></strong> (always exported).</p>
# <ul>
# <li><code>macOS</code>: 10.15.1, 10.16 ...</li>
# <li><code>kali</code>: 2021.2, ...</li>
# <li><code>ubuntu</code> 20.04, ...</li>
# </ul>
# </html>
export DIST_VERSION

# '1' if 'DIST_ID' is 'fedora' or 'fedora' in 'DIST_ID_LIKE'.
#
export FEDORA_LIKE

# '1' if 'DIST_ID' is 'fedora'.
#
export FEDORA

# Cask Versions (similar to opt)
#
export HOMEBREW_CASK

# Version of formula, $HOMEBREW_PREFIX/opt is a symlink to $HOMEBREW_CELLAR (brew shellenv).
#
export HOMEBREW_CELLAR

# Brew bash completion (bash_completion.d) compat directory $BASH_COMPLETION_COMPAT_DIR, under etc.
#
export HOMEBREW_COMPLETION

# Homebrew etc
#
export HOMEBREW_ETC

# Homebrew unlinked Kegs (in $HOMEBREW_OPT) to add to PATH
#
export HOMEBREW_KEGS

# Homebrew ./lib
#
export HOMEBREW_LIB

# Symlink for the latest version of formula to $HOMEBREW_CELLAR.
#
export HOMEBREW_OPT

# Homebrew prefix (brew shellenv)
#
export HOMEBREW_PREFIX

# Profile compat dir (profile.d), under etc.
#
export HOMEBREW_PROFILE

# Repository and Library with homebrew gems and Taps (brew shellenv).
#
export HOMEBREW_REPOSITORY

# Taps path under '$HOMEBREW_REPOSITORY/Library'.
#
export HOMEBREW_TAPS

# <html><h2>First part of hostname</h2>
# <p><strong><code>$HOST</code></strong> (always exported).</p>
# <ul>
# <li><code>foo.com</code>: foo</li>
# <li><code>example.foo.com</code>: example</li>
# </ul>
# </html>
export HOST

# Symbol and 'HOST' if 'CONTAINER' or 'SSH'.
    #
export HOST_PROMPT

# '1' if 'DIST_ID' is 'kali'.
#
export KALI

# <html><h2>Is MACOS?</h2>
# <p><strong><code>$MACOS</code></strong> (always exported).</p>
# <p><strong><code>Boolean</code></strong></p>
# <ul>
# <li><code>true</code>: $UNAME is darwin</li>
# <li><code>false</code>: $UNAME is linux</li>
# </ul>
# </html>
export MACOS

# '1' if 'DIST_ID' is 'alpine' and '/etc/nix'.
#
export NIXOS

# <html><h2>Default Package Manager</h2>
# <p><strong><code>$PM</code></strong> (always exported).</p>
# <ul>
# <li><code>apk</code></li>
# <li><code>apt</code></li>
# <li><code>brew</code></li>
# <li><code>nix</code></li>
# <li><code>yum</code></li>
# </ul>
# </html>
export PM

# <html><h2>Default Package Manager with Install Options</h2>
# <p><strong><code>$PM_INSTALL</code></strong> (always exported).</p>
# <p><strong><code>Quiet and no cache (for containers)</code></strong>.</p>
# <ul>
# <li><code>apk</code></li>
# <li><code>apt</code></li>
# <li><code>brew</code></li>
# <li><code>nix</code></li>
# <li><code>yum</code></li>
# </ul>
# </html>
export PM_INSTALL

# PyCharm contents (initial plugins, etc.).
#
export PYCHARM_CONTENTS

# PyCharm repository, application executable and configuration full path.
#
export PYCHARM

# '1' if 'DIST_ID' is 'rhel'.
#
export RHEL

# '1' if 'DIST_ID' is 'rhel' or 'rhel' in 'DIST_ID_LIKE'.
#
export RHEL_LIKE

# '1' if 'SSH_CLIENT' or 'SSH_TTY' or 'SSH_CONNECTION'.
#
export SSH

# '1' if 'DIST_ID' is 'ubuntu'.
#
export UBUNTU

# <html><h2>Operating System System Name</h2>
# <p><strong><code>$UNAME</code></strong> (always exported).</p>
# <ul>
# <li><code>Darwin</code></li>
# <li><code>Linux</code></li>
# </ul>
# </html>
export UNAME

# '1' if VGA.
#
export VGA

#######################################
# distribution ID
#######################################
dist_id() {
  case "${DIST_ID}" in
    alpine)
      ALPINE_LIKE=1; DIST_ID_LIKE="${DIST_ID}"
      if [ -r '/etc/nix' ]; then NIXOS=1; PM='nix-env'; else ALPINE=1; PM='apk'; fi
      ;;
    arch) ARCH=1; PM='pacman' ;;
    centos) CENTOS=1; PM='yum' ;;
    debian) DEBIAN=1; DEBIAN_LIKE=1; DIST_ID_LIKE="${DIST_ID}" ;;
    fedora) FEDORA=1; FEDORA_LIKE=1; PM='dnf' ;;
    kali) KALI=1 ;;
    rhel) RHEL=1; RHEL_LIKE=1; PM='yum' ;;
    ubuntu) UBUNTU=1 ;;
    *) DIST_UNKNOWN=1 ;;
  esac
}

#######################################
# distribution ID like
#######################################
dist_id_like() {
  case "${DIST_ID_LIKE}" in
    debian) DEBIAN_LIKE=1; PM='apt' ;;
    *fedora*) FEDORA_LIKE=1; DIST_ID_LIKE='fedora' ;;
    *rhel*) RHEL_LIKE=1; DIST_ID_LIKE='rhel' ;;
  esac
}

#######################################
# homebrew variables
#######################################
homebrew() {
  if [ -x "${HOMEBREW_PREFIX}/bin/brew" ]; then
    HOMEBREW_CASK="${HOMEBREW_PREFIX}/Caskroom"
    HOMEBREW_CELLAR="${HOMEBREW_PREFIX}/Cellar"
    HOMEBREW_ETC="${HOMEBREW_PREFIX}/etc"
    HOMEBREW_COMPLETION="${HOMEBREW_ETC}/bash_completion.d"
    HOMEBREW_LIB="${HOMEBREW_PREFIX}/lib"
    HOMEBREW_OPT="${HOMEBREW_PREFIX}/opt"
    HOMEBREW_PROFILE="${HOMEBREW_ETC}/profile.d"
    HOMEBREW_REPOSITORY="${HOMEBREW_PREFIX}/Homebrew"
    HOMEBREW_TAPS="${HOMEBREW_REPOSITORY}/Library/Taps"
  else
    unset HOMEBREW_KEGS HOMEBREW_PREFIX
  fi
}

#######################################
# package manager install
#######################################
pm_install() {
  if [ "${PM-}" ]; then
    case "${PM}" in
      # pacman -Sy (like apt update)
      apk) PM_INSTALL="${PM} ${PM} add -q --no-progress"; NO_CACHE='--no-cache' ;;
      apt) PM_INSTALL="${PM} -qq full-upgrade -y && ${PM} -qq auto-remove -y && ${PM} -qq update -y \
&& ${PM} -qq install -y" ;;
      brew) PM_INSTALL="${PM} install --quiet" ;;
      dnf) PM_INSTALL="${PM} install -y -q" ;;
      nix) PM_INSTALL="${PM} --install -A" ;; # nixos -> nixos.curl, no nixos --> nixpkgs.curl
      pacman) PM_INSTALL="${PM} -Sy && ${PM} -S --noconfirm" ;;
      yum) PM_INSTALL="${PM} install -y -q" ;;
      *) PM_INSTALL=''
    esac
  fi
}

#######################################
# system main
#######################################
system() {
  HOST="$(command -p hostname -s 2>/dev/null || command -p cut -d '.' -f 1 /etc/hostname)"
  UNAME="$(command -p uname)"
  if [ "${UNAME}" = 'Darwin' ]; then
    CLT="$(command -p xcode-select -p)"
    DIST_ID="$(command -p sw_vers -ProductName)"
    DIST_ID_LIKE="${DIST_ID}"
    DIST_VERSION="$(command -p sw_vers -ProductVersion)"
    # shellcheck disable=SC2016
    case "$(echo "${DIST_VERSION}" | command -p awk -F. '{ print $1 $2 }')" in
      1013) DIST_CODENAME='High Sierra' ;;
      1014) DIST_CODENAME='Mojave' ;;
      1015) DIST_CODENAME='Catalina' ;;
      11*) DIST_CODENAME='Big Sur' ;;
      12*) DIST_CODENAME='Monterey' ;;
      *) DIST_CODENAME='Other' ;;
    esac
    HOMEBREW_KEGS='ruby'
    HOMEBREW_PREFIX='/usr/local'
    BATS="${HOMEBREW_PREFIX}/share/bats"
    BATS_CORE="${BATS}/bats-core"
    MACOS=true
    PM='brew'
    PM_INSTALL="${PM} install"
    PYCHARM_CONTENTS='/Applications/PyCharm.app/Contents'
    PYCHARM="${PYCHARM_CONTENTS}/bin"
    VGA=1
  else
    if [ -f '/etc/os-release' ]; then
      while IFS='=' read -r name value; do
        case "${name}" in
          ID) DIST_ID="${value}"; dist_id; unset -f dist_id ;;
          ID_LIKE) DIST_ID_LIKE="${value}"; dist_id_like; unset -f dist_id_like ;;
          VERSION_ID) DIST_VERSION="${value}" ;;
          VERSION_CODENAME) DIST_CODENAME="${value}" ;;
        esac
      done < '/etc/os-release'
      unset name value
    else
      BUSYBOX=1; PM=''
    fi
    HOMEBREW_PREFIX='/home/linuxbrew/.linuxbrew'
    MACOS=false
    VGA="$(lspci | awk '/VGA/ { print 1 }')"
  fi

  [ "${VGA-}" -eq 1 ] || unset VGA
  homebrew; unset -f homebrew
  pm_install; unset -f pm_install

  if [ "${SSH_CLIENT-}" ] || [ "${SSH_CONNECTION-}" ] || [ "${SSH_TTY-}" ]; then
    SSH=1
    HOST_PROMPT="⌁ ${HOST}"
  elif [ -f '/.dockerenv' ]; then
    CONTAINER=1
    HOST_PROMPT="ꜿ ${HOST}"
    [ ! "${DEBIAN_LIKE-}" ] || DEBIAN_FRONTEND='noninteractive'
    if [ "${NO_CACHE-}" ]; then
      PM_INSTALL="${PM_INSTALL} ${NO_CACHE}"
    fi
  fi
}

system; unset -f system

# eval "$("${BINPM}/bin/colon" --init)"
}

####################################### Executed
#
if [ "$(command -p basename "$0")" = 'system.sh' ]; then
  fromman "$0" "$@" || exit 0
fi
