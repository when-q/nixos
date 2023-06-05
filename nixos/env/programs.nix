{pkgs, lib, ...}:
{
  environment.defaultPackages = lib.mkForce [];
  environment.systemPackages = with pkgs; [
    meslo-lg
    rofi
    curl
    ripgrep
    kitty
    dunst
  ]++[
    grim
    slurp
  ];

  # we put misc programs here
  programs.zsh.enable = true;
  programs.git.enable = true;
  programs.neovim.enable = true;
}
