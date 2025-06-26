{config, lib, inputs, pkgs, ...}: {
  ## Flakes
  nix.settings.experimental-features = ["nix-command" "flakes"]; # Habilitar os flakes.

  # Outros troço do flakes
  nix.nixPath = lib.mapAttrsToList (key: _: "${key}=flake:${key}") config.nix.registry;
  nix.registry = lib.mapAttrs (_: value: {flake = value;}) (lib.filterAttrs (_: value: lib.isType "flake" value) inputs);
  nix.settings.flake-registry = ""; # Recomendações do Thou.

}