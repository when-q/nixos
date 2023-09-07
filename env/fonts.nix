{pkgs, ...}:
{
  fonts = {
      fontconfig.enable = true;
      fontconfig.hinting.autohint = true;
      fontconfig.antialias = true;
      packages = with pkgs;
      [
        nerdfonts 
        noto-fonts-cjk
        source-han-serif
        libre-baskerville
        eb-garamond
        meslo-lg
      ];
    };
}
