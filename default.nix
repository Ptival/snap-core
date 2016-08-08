{ nixpkgs ? import <nixpkgs> {}, compiler }:
nixpkgs.pkgs.haskell.packages.${compiler}.callPackage ./snap-core.nix { }

