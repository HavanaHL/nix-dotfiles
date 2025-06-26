{config, pkgs, ...}: {

  programs.zsh = {
    enable = true;
     ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "z"
        "sudo"
      ];
      theme = "half-life";
     };
   };

## Setar shell pro user
 users.users.deive = {
  shell = pkgs.zsh;

};

## Ignorar mensagem do diabo lá
system.userActivationScripts.zshrc = "touch .zshrc";

}

