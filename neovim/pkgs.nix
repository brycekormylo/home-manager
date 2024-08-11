{pkgs, ...}: {
  home.packages = with pkgs; [
    # Dependencies for nvim-lint and conform
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
    vale
    markdownlint-cli
    nodePackages.jsonlint
    ruby
    hadolint
    universal-ctags
  ];
}
