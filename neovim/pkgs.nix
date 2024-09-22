{pkgs, ...}: {
  home.packages = with pkgs; [
    # Nix package dependencies for nvim plugins
    alejandra
    asm-lsp
    curl
    eslint_d
    google-java-format
    hadolint
    markdown-oxide
    markdownlint-cli
    mdformat
    nix
    nixd
    nixfmt-classic
    nodePackages.jsonlint
    nodePackages.prettier
    prettierd
    ruby
    rustfmt
    rustywind
    semgrep
    statix
    stylua
    vale
    yamlfmt
    yamllint
    # ctags
    # universal-ctags
  ];
}
