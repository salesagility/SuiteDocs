{
  description = "A Nix Environment for my website";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
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
              ];
            };
          };
        });
}
