{ config, pkgs,options, lib, ... }:
{
    home.stateVersion = "23.05";
    home.packages = with pkgs; [ 
      discord
      tdesktop
      spotify
    ];
}
