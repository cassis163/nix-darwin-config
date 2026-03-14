{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-25.11-darwin";
    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/nix-darwin-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, nix-darwin, ... }: {
    darwinConfigurations = {
      MBP-CA = nix-darwin.lib.darwinSystem {
        specialArgs = { inherit self; };

        system = "aarch64-darwin";
        modules = [
          ./configuration.nix
          ./system
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.casperaangeenbrug = import ./profiles/home.nix;
          }
        ];
      };
    };
  };
}
