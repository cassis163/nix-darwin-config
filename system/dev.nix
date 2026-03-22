{pkgs-unstable, ...}: {
  environment.systemPackages = with pkgs-unstable; [
    # Nix
    nil         # LSP
    alejandra   # Formatter
    devenv      # Dev environment

    # DevOps
    nixos-anywhere

    # AI
    opencode    # AI coder
  ];

  programs.direnv = {
    enable = true;
  };
}
