{pkgs, ...}: let
  commonVscodeSettings = {
    "files.autoSave" = "afterDelay";

    "chat.agent.enabled" = false;
    "chat.disableAIFeatures" = true;

    "nix.enableLanguageServer" = true;
    "nix.formatterPath" = "alejandra";
    "nix.serverPath" = "nil";
    "nix.serverSettings" = {
      "nil" = {
        "formatting" = {
          "command" = ["alejandra"];
        };
      };
    };
  };

  commonVscodeExtensions = with pkgs.vscode-extensions; [
    editorconfig.editorconfig
    jnoortheen.nix-ide
    yzhang.markdown-all-in-one
  ];
in {
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

  programs.vscode = {
    enable = true;
    profiles = {
      "Default" = {
        extensions = commonVscodeExtensions;
        userSettings = commonVscodeSettings;
      };
      "Rust" = {
        extensions = commonVscodeExtensions ++ (with pkgs.vscode-extensions; [
          rust-lang.rust-analyzer
        ]);
        userSettings = commonVscodeSettings;
      };
      "C++" = {
        extensions = commonVscodeExtensions ++ (with pkgs.vscode-extensions; [
          ms-vscode.cpptools-extension-pack
        ]);
        userSettings = commonVscodeSettings;
      };
    };
  };
}
