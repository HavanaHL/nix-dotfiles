{config, pkgs, ...}: {

programs.git.enable = true;

  programs.zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
#        "z"
        "sudo"
      ];
      theme = "half-life";
     };
   };
}
