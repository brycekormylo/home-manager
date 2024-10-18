{pkgs, ...}: {
  home.packages = with pkgs; [
    # Nix package dependencies for nvim plugins
    alejandra
    asm-lsp
    bun
    ctags
    curl
    eslint_d
    deno
    go_1_22
    google-java-format
    hadolint
    markdownlint-cli
    mdformat
    mono
    nix
    nixd
    nixfmt-classic
    nodePackages.jsonlint
    nodejs_22
    python3
    nodePackages.prettier
    npm-check
    prettierd
    rustup
    rustywind
    semgrep
    statix
    stylua
    vale
    wasm-pack
    wasm-tools
    yamlfix
    yamlfmt
    yamllint
    zig
    # markdown-oxide
  ];
}
