FROM nixos/nix:2.6.0

RUN echo experimental-features = nix-command flakes >> /etc/nix/nix.conf

RUN nix-env -iA nixpkgs.docker-client nixpkgs.git
