{config, pkgs, ...}: {
  environment.sessionVariables = {
    BROWSER = "${pkgs.firefox}/bin/firefox";
    EDITOR = "${pkgs.vscodium}/bin/codium";
    TERMINAL = "${pkgs.kitty}/bin/kitty";
  };
}