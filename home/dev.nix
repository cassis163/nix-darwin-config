{ pkgs, ... }: {
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "cassis163";
        email = "c.aangeenbrug@protonmail.com";
      };
    };
  };

  programs.ghostty = {
    enable = true;
    package = if pkgs.stdenv.isDarwin then pkgs.ghostty-bin else pkgs.ghostty;

    enableZshIntegration = true;

    settings = {
      theme = "Abernathy";
      background-opacity = "0.95";
    };
  };

  programs.starship = {
    enable = true;
  };
}