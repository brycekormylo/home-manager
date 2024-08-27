{pkgs, ...}: {
  home.packages = with pkgs; [
    # Nix package dependencies for nvim plugins
    nodePackages.prettier
    prettierd
    rustywind
    eslint_d
    alejandra
    stylua
    yamlfmt
    statix
    semgrep
    yamllint
    nix
    nixd
    nixfmt-classic
    rustfmt
    vale
    mdformat
    markdownlint-cli
    markdown-oxide
    nodePackages.jsonlint
    ruby
    hadolint
    ctags
    # universal-ctags
    curl
  ];
}
