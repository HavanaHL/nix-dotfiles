{pkgs, config, ...}: {

 imports = [

  ./hm-confs/git/git.nix
  ./hm-confs/fontes/fontes.nix

];

  home.packages = [
    pkgs.atool
    pkgs.httpie

    ## Rice
    pkgs.rofi-power-menu 
    pkgs.dunst
    pkgs.rofi
    pkgs.libnotify
    pkgs.nitrogen
    pkgs.pfetch
    pkgs.tty-clock
    pkgs.plank
    pkgs.polybar
#   pkgs.picom
    pkgs.kdePackages.breeze

    ## Jogos y games
    pkgs.lutris
    pkgs.mangohud
    pkgs.goverlay

    ## Gráfico
    pkgs.kdePackages.kdenlive

    ## Internet
    pkgs.telegram-desktop
    pkgs.brave
    pkgs.discord
    pkgs.freetube
    pkgs.webcord
    pkgs.qbittorrent
    pkgs.legcord

    ## Acessorios
    pkgs.fastfetch
    pkgs.xfce.ristretto
    pkgs.bc
    pkgs.kdePackages.kdialog
    pkgs.dialog
    pkgs.sassc
    pkgs.glib
    pkgs.ksnip
    pkgs.copyq
    pkgs.zenity
    pkgs.kitty
    pkgs.pnmixer
    pkgs.alacritty

    # IDE
    pkgs.vscodium
    pkgs.nixd

    ## Multimídia
    pkgs.gpu-screen-recorder-gtk
    pkgs.youtube-music
    pkgs.strawberry

    ## Sys
    pkgs.intel-vaapi-driver
    pkgs.polkit_gnome
    
    ## Outros
    pkgs.nix-search-cli
    pkgs.networkmanagerapplet

  ];
  home.username = "deive";
  home.homeDirectory = "/home/deive";
  programs.home-manager.enable = true;

  programs.bash.enable = true;
  nixpkgs.config.allowUnfree = true;
  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "25.05";
}


