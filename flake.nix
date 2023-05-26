{
  description = "NixOS configuration with flake";
  inputs = {

    nixUnstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{
    self,
    nixUnstable,
    nixpkgs,
    home-manager,
    ...
  }: {
  nixosConfigurations.me = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        specialArgs = {
          inherit nixpkgs;
          inherit nixUnstable;
        };
        modules = [
          ./configuration.nix
	  ./hardware-configuration.nix
        ];
      };
    };
}
