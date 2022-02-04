FROM nixos/nix:2.6.0

RUN nix-env -iA nixpkgs.docker-client nixpkgs.git
