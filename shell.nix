# Use this file with nix-shell or similar tools; see https://nixos.org/
with import <nixpkgs> {};

mkShell {
  buildInputs = [
    (python3.withPackages (ps: with ps; [ flask gunicorn boto3 humanfriendly pypandoc progress ]))
    imagemagick
    ffmpeg
    inkscape
    libreoffice
    pandoc
    git
  ];
}
