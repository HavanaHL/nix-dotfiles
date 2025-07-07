{pkgs, config, ...}: {

 imports = [

  ./hm-confs/git/git.nix
  ./hm-confs/fontes/fontes.nix
  ./hm-confs/pkgs/pkgs.nix
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
