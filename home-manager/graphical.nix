{ config, pkgs, hyprland, ... }:

{
  imports = [
    ./terminal.nix
    hyprland.homeManagerModules.default
  ];

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    # gui
    foot
    vieb
    mpd
    mpv
    imv
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];

  wayland.windowManager.hyprland.enable = true;
}
