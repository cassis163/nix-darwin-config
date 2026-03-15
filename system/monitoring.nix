{ pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      # Process management
      htop
      btop

      # Storage management
      ncdu
      grandperspective
    ];
}