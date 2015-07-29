#!/usr/bin/env sh

pacman -S --noconfirm ranger
pacman -S --noconfirm cmake
pacman -S --noconfirm make
pacman -S --noconfirm xorg-xrdb
pacman -S --noconfirm clang
pacman -S --noconfirm gcc
pacman -S --noconfirm curl
pacman -S --noconfirm wget
pacman -S --noconfirm git
pacman -S --noconfirm rsync
pacman -S --noconfirm gvim
pacman -S --noconfirm firefox
pacman -S --noconfirm npm
pacman -S --noconfirm python-pip
pacman -S --noconfirm python-lxml
pacman -S --noconfirm transmission-gtk

# iphone / USB

pacman -S --noconfirm usbmuxd gvfs-afc
pacman -S --noconfirm thunar

# latex

pacman -S --noconfirm extra/texlive-bibtexextra
pacman -S --noconfirm extra/texlive-bin
pacman -S --noconfirm extra/texlive-core
pacman -S --noconfirm extra/texlive-fontsextra
pacman -S --noconfirm extra/texlive-formatsextra
pacman -S --noconfirm extra/texlive-games
pacman -S --noconfirm extra/texlive-genericextra
pacman -S --noconfirm extra/texlive-htmlxml
pacman -S --noconfirm extra/texlive-humanities
pacman -S --noconfirm extra/texlive-langchinese
pacman -S --noconfirm extra/texlive-langcjk
pacman -S --noconfirm extra/texlive-langcyrillic
pacman -S --noconfirm extra/texlive-langextra
pacman -S --noconfirm extra/texlive-langgreek
pacman -S --noconfirm extra/texlive-langjapanese
pacman -S --noconfirm extra/texlive-langkorean
pacman -S --noconfirm extra/texlive-latexextra
pacman -S --noconfirm extra/texlive-music
pacman -S --noconfirm extra/texlive-pictures
pacman -S --noconfirm extra/texlive-plainextra
pacman -S --noconfirm extra/texlive-pstricks
pacman -S --noconfirm extra/texlive-publishers
pacman -S --noconfirm extra/texlive-science