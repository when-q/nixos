{ config, pkgs,options, lib, ... }:
{
    home.stateVersion = "23.05";
    home.packages = with pkgs; [ 
      spotify
      discord
      telegram-desktop
    ] ++ [
      universal-ctags
      cscope
      global
      fzf
      zoxide
      fd
      bat
    ];
    programs.direnv.enable = true;
    programs.direnv.nix-direnv.enable = true;
}
