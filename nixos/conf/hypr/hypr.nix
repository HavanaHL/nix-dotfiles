{config, pkgs, ...}: {
  programs.hyprland = {
    enable = true;
    withUWSM = true; # Recomendação da wiki :P
    xwayland.enable = true; 
  };

environment.systemPackages = with pkgs; [ waybar waypaper hyprpaper swaybg slurp grim wl-clipboard ];

}
