{
  description = "NixOS configuration with flake";
  inputs = {

    #nixUnstable.url = "github:NixOS/nixpkgs/nixos-unstable";
#    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{
    self,
#    nixUnstable,
    nixpkgs,
    home-manager,
    ...
  }: {
  nixosConfigurations.me = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        specialArgs = {
          inherit nixpkgs;
#          inherit nixUnstable;
          inherit home-manager;
        };
        modules = [
         ./configuration.nix
	       ./hardware-configuration.nix
         home-manager.nixosModules.home-manager
         {
            home-manager.useGlobalPkgs = true; # makes hm use nixos's pkgs value
            home-manager.extraSpecialArgs = { inherit inputs; }; # allows access to flake inputs in hm modules
            home-manager.users.me.imports = [ ./home/user.nix ];
          }

        ];
      };
    };
}
