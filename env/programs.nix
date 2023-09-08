{pkgs, lib, ...}:
{
  environment.defaultPackages = lib.mkForce [];
  environment.systemPackages = with pkgs; [
    rofi
    curl
    ripgrep
    kitty
    gcc
  ] ++ [
    grim
    slurp
  ];

  # we put misc programs here
  programs.git.enable = true;
  programs.zsh = {
      enable = true;
      enableCompletion = true;
    };
  programs.fzf.keybindings=true;
  programs.fzf.fuzzyCompletion = true;
  programs.neovim.enable = true;
  programs.tmux.enable = true;
}
