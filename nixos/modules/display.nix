{pkgs, ...}:
{

  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-gtk];
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    xwayland.hidpi = false;
    nvidiaPatches = true;
  };
  programs.waybar.enable = true;
}
