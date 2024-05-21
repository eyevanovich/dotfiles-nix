{ ... }:
environment.variables.HOMEBREW_NO_ANALYTICS = "1";

{
  # Enable Homebrew
  # Note that enabling this option does not install Homebrew, see the Homebrew website for installation instructions.
  # https://brew.sh/
  # https://daiderd.com/nix-darwin/manual/index.html#opt-homebrew.enable
  homebrew.enable = true;

  # List of Homebrew formulae to install.
  # https://daiderd.com/nix-darwin/manual/index.html#opt-homebrew.brews
  homebrew.brews = [
    "awscli"
    "bat"
    "glow"
    "helix"
    "bottom"
    "jq"
    "lazygit"
    "zellij"
    "marksman"
    "neofetch"
    "pre-commit"
    "taplo"
    "yq"
    "fish"
    "tldr"
    "kubectx"
    "direnv"
    "yazi"
  ];

  # Prefer installing application from the Mac App Store
  #
  # Commented apps suffer continual update issue:
  # https://github.com/malob/nixpkgs/issues/9
  homebrew.masApps = {
    "Xcode" = 497799835;
  };

  # List of Homebrew casks to install.
  # https://daiderd.com/nix-darwin/manual/index.html#opt-homebrew.casks
  homebrew.casks = [
    "arc"
    "karabiner-elements"
    "obsidian"
    "rectangle"
    "spotify"
    "setapp"
  ];
}
