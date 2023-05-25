{ config, pkgs, ... }:

{
  home.username = "eder";
  home.homeDirectory = "/home/eder";
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    # essentials
    neovim
    git
    iproute2
    nmap
    archiver
    curl
    rsync
    jq
    inotify-tools
    terminus-font
    keyd

    # terminal
    fzf
    starship
    bat
    nvimpager
    ripgrep
    fd
    tmux
    chezmoi
    lazygit
    html5-tidy
    sshpass
    neofetch
    btop
    exa
    zoxide
    pass
    kopia
    lf

    # gui
    alacritty
    vieb
    mpd
    mpv
    imv
  ];
}
