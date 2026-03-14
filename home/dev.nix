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
}