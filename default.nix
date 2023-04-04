with (import <nixpkgs> {});
let
in stdenv.mkDerivation {
  name = "pax-apx";
  src = ./.;
  buildInputs = [ruby];
  installPhase = ''
    mkdir -p $out/bin
    cp $src/pax $out/bin
  '';
  unpackPhase = ":";
}