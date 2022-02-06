#!/bin/bash
set -e
source /bd_build/buildconfig
set -x

## Often used tools.
$minimal_apt_get_install curl less vim-tiny psmisc gpg-agent dirmngr
ln -s /usr/bin/vim.tiny /usr/bin/vim

## This tool runs a command as another user and sets $HOME.
cp /bd_build/bin/setuser /sbin/setuser

## This tool allows installation of apt packages with automatic cache cleanup.
cp /bd_build/bin/install_clean /sbin/install_clean

## Install mono from the official repos and cleanup after
curl https://download.mono-project.com/repo/xamarin.gpg | apt-key add -
echo "deb http://download.mono-project.com/repo/ubuntu focal main" | tee /etc/apt/sources.list.d/mono-official.list
/sbin/install_clean mono-complete ca-certificates-mono