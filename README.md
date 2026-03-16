# cassis163's nix-darwin Configuration

This is my flake-based Nix configuration for my Macbook. Feel free to take what you need.

## What's included

This is what I work with:

| Area | Details |
| --- | --- |
| Terminal | Ghostty with Zsh + Starship prompt |
| Editor | VS Code with Nix and Markdown extensions |
| AI workflow | `opencode` installed system-wide for terminal-based assistance |
| Browser | Firefox with uBlock Origin, Dark Reader, and Bitwarden preinstalled |
| Dev tooling | `direnv` with `devenv` for project environments |
| Disk management | `ncdu` and GrandPerspective |
| Monitoring tools | `htop` and `btop` |

## Requirements

- Nix with flakes enabled
- nix-darwin installed for the current macOS user

## Usage

Apply the system configuration:

```sh
sudo darwin-rebuild switch --flake .#MBP-CA
```

Update inputs and rebuild:

```sh
nix flake update
sudo darwin-rebuild switch --flake .#MBP-CA
```
