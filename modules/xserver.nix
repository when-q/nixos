{config, pkgs, ...}:
{
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
  hardware.nvidia.modesetting.enable = true;

  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
    xkbOptions= "ctrl:swapcaps";

    #videoDrivers = [ "nvidia" ];
    videoDrivers = [ "nouveau" ];
    libinput =
    {
      enable = true;
      mouse.accelProfile = "flat";
    };

    excludePackages = with pkgs; [
      xterm
      nano
    ];
    displayManager =
    {
      lightdm = {
        enable = true;
      };
    };
    displayManager.autoLogin = {
      enable = true;
      user = "me";
    };

  };
}
