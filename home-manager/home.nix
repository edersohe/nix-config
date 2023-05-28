{ config, pkgs, hyprland, ... }:

{
  home.username = "eder";
  home.homeDirectory = "/home/eder";
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    # essentials
    neovim
    git
    wget
    iproute2
    nmap
    archiver
    curl
    rsync
    jq
    inotify-tools

    # terminal
    fzf
    starship
    bat
    nvimpager
    ripgrep
    fd
    chezmoi
    lazygit
    #html5-tidy
    sshpass
    neofetch
    btop
    exa
    zoxide
    pass
    kopia
    lf
    zellij

    # gui
    foot
    vieb
    mpd
    mpv
    imv
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];

  imports = [
    hyprland.homeManagerModules.default
  ];
  wayland.windowManager.hyprland.enable = true;
}
