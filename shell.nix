{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  packages = with pkgs; [
    scipopt-scip
    scipopt-zimpl
  ];
}
