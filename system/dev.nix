{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Nix
    nil # LSP
    alejandra # Formatter
  ];
}
