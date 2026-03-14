{ config, pkgs, ... }:

{
  home.username = "casperaangeenbrug";
  home.homeDirectory = "/Users/casperaangeenbrug";

  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
}