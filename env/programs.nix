{pkgs, lib, ...}:
{
  environment.defaultPackages = lib.mkForce [];
  environment.systemPackages = with pkgs; [
    rofi
    curl
    ripgrep
    kitty
  ] ++ [
    grim
    slurp
  ];

  # we put misc programs here
  programs.zsh.enable = true;
  programs.git.enable = true;
  programs.neovim.enable = true;
  programs.tmux.enable = true;
}
