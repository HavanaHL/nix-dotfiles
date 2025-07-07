{config, pkgs, ...}:
{
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
    thunar
];
  services.tumbler.enable = true; # Serviço de thumbnail
}
