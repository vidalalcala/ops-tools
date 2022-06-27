{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/3590f02e7d5760e52072c1a729ee2250b5560746.tar.gz") {} }:

let
  my-python = pkgs.python3;
  python-with-my-packages = my-python.withPackages (p: with p; [
    setuptools
    requests
    ansible
    pymysql
    docker
  ]);
in
pkgs.mkShell {
  buildInputs = [
    pkgs.bash
    pkgs.which
    pkgs.htop
    pkgs.zlib
    python-with-my-packages
    pkgs.docker
    pkgs.minikube
    pkgs.csvkit
  ];

  shellHook = ''
    echo welcome to opstools dev environment
  '';

  MY_ENVIRONMENT_VARIABLE = "world";
}
