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
      zoxide
      fd
      bat
    ];
    programs.direnv.enable = true;
    programs.direnv.nix-direnv.enable = true;




    programs.fzf = {
      enable = true;
      enableZshIntegration = true;
    };

    programs.bat.enable = true;
    home.file = {
    ".zshrc".source = ./zshrc;
     };
}
