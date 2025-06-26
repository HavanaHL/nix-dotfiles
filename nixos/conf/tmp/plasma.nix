{config, pkgs, ...}: {

  services.desktopManager.plasma6.enable = true; # Realmente ativar o Plasma
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  programs.kdeconnect.enable = true;
  
  ## Urgh, maldito seja o bloat
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
  kate
  okular
  spectacle
];

}