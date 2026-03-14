{ pkgs, ... }: {
  programs.brave = {
    enable = true;
    extensions = [
      { id = "epcnnfbjfcgphgdmggkamkmgojdagdnn"; } # ublock origin
      { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; } # dark reader
      { id = "nngceckbapebfimnlniiiahkandclblb"; } # bitwarden
    ];
  };
}