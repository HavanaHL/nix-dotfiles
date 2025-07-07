{pkgs, config, ...}: {
    
home.packages = with pkgs; [
 
 ## Rice
  rofi-power-menu
  dunst
  rofi
  libnotify
  pfetch
  tty-clock
  kdePackages.breeze

 ## Jogos y games
  lutris
  mangohud
  goverlay

 ## Gráfico
  kdePackages.kdenlive

 ## Internet
  telegram-desktop
  discord
  freetube
  qbittorrent

 ## Acessorios
  fastfetch
  xfce.ristretto
  kdePackages.kdialog
  dialog
  sassc
  glib
  copyq
  zenity
  kitty
  alacritty

 # IDE
  vscodium
  nixd
  zed-editor-fhs
  nil


 ## Multimídia
  gpu-screen-recorder-gtk
  youtube-music
  strawberry

 ## Sys
  intel-vaapi-driver
  polkit_gnome

 ## Outros
  nix-search-cli
  networkmanagerapplet
  atool
  httpie
  
  ];
}