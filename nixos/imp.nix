{config, ...}: {
   imports = [
    ./hardware-configuration.nix
    ./conf/pkgs/pkgs.nix
    ./conf/HW/vaapi.nix
    ./conf/pkgs/thunar.nix
    ./conf/zram/zram.nix
    ./conf/discos/discos.nix
    ./conf/flakes/flakes.nix ## Ativação do flakes
    ./conf/Environments/Aliases.nix
    ./conf/Environments/VA.nix
#    ./conf/pkgs/Lix.nix
    ./conf/fltpk/Flatpak.nix
    ./conf/pkgs/Polkit.nix
    ./conf/pkgs/Steam.nix
    ./conf/zsh/zsh.nix
    ./conf/hypr/hypr.nix
    ./conf/Environments/dft.nix
    #./conf/tmp/
  ];
}
