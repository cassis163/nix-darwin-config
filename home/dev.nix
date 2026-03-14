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
    package = pkgs.ghostty-bin;

    enableZshIntegration = true;

    settings = {
      theme = "Abernathy";
      background-opacity = "0.95";
    };
  };

  programs.starship = {
    enable = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      switch = "sudo darwin-rebuild switch";
    };

    initContent = ''
eval "$(starship init zsh)"
    '';
  };
}