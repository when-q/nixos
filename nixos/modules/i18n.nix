{pkgs, ...}:
{
  i18n = {
      supportedLocales = [ "all" ]; # Override console-env.
      defaultLocale = "en_US.UTF-8";
      inputMethod = {
        enabled = "fcitx5";
        fcitx5.addons = with pkgs; [
          (fcitx5-rime.override {
            rimeDataPkgs = [ rime-data ];
          })
        ];
      };
    };
      i18n.extraLocaleSettings = {
      LC_ADDRESS = "en_GB.UTF-8";
      LC_IDENTIFICATION = "en_GB.UTF-8";
      LC_MEASUREMENT = "en_GB.UTF-8";
      LC_MONETARY = "en_GB.UTF-8";
      LC_NAME = "en_GB.UTF-8";
      LC_NUMERIC = "en_GB.UTF-8";
      LC_PAPER = "en_GB.UTF-8";
      LC_TELEPHONE = "en_GB.UTF-8";
      LC_TIME = "en_GB.UTF-8";
  };
}
