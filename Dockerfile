FROM nixos/nix:2.6.0

RUN echo -e "experimental-features = nix-command flakes \n\
filter-syscalls = false" >> /etc/nix/nix.conf

RUN nix-env -iA nixpkgs.git nixpkgs.docker-client
