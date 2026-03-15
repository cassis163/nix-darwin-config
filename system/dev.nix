{pkgs-unstable, ...}: {
  environment.systemPackages = with pkgs-unstable; [
    # Nix
    nil # LSP
    alejandra # Formatter
    devenv

    # AI
    opencode
  ];

  programs.direnv = {
    enable = true;
  };
}
