{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = {self, nixpkgs, home-manager, chaotic,
  }
    @ inputs: {
    formatter."x86_64-linux" = nixpkgs.legacyPackages."x86_64-linux".alejandra;

    nixosConfigurations = {
      "Exodus" = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          chaotic.nixosModules.default
          ];
      };
    };

    homeConfigurations = {
      "deive@Exodus" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
        modules = [./home.nix];
      };
    };
  };
}
