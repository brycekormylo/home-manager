{pkgs, ...}: {
  home.packages = with pkgs; [
    nodePackages.prettier
    prettierd
    rustywind
    alejandra
    stylua
    yamlfmt
    statix
    semgrep
    yamllint
    nix
    vale
    nodePackages.jsonlint
    eslint_d
    ruby
    hadolint
  ];
}
