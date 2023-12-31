{
  description = "A Nix Environment for my website";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.asciidoctor-server = {
    url = "github:hybras/asciidoctor-server";
    inputs.nixpkgs.follows = "nixpkgs";
    inputs.flake-utils.follows = "flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, asciidoctor-server }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { inherit system; }; in
        {
          devShells = {
            default = pkgs.mkShell {
              buildInputs = [
                pkgs.hugo
                pkgs.asciidoctor-with-extensions
                pkgs.go
                pkgs.ruby
                asciidoctor-server.packages.${system}.asciidoctor-client
              ];
            };
          };
        });
}
