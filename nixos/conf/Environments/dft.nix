{config, pkgs, ...}: {
  environment.sessionVariables = {
    BROWSER = "${pkgs.firefox}/bin/firefox";
    EDITOR = "${pkgs.mousepad}/bin/mousepad";
    TERMINAL = "${pkgs.kitty}/bin/kitty";
  };
}
