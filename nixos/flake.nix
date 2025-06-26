{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
  } @ inputs: {
    formatter."x86_64-linux" = nixpkgs.legacyPackages."x86_64-linux".alejandra;

    nixosConfigurations = {
      "Genesis" = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [./configuration.nix];
      };
    };

    homeConfigurations = {
      "deive@Genesis" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
        modules = [./home.nix];
      };
    };
  };
}
