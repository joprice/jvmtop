let
  pkgs = import <nixpkgs> {
    overlays = [
      (self: super: {
        jdk = pkgs.jdk8;
      })
    ];
  };
in
with pkgs;
mkShell {
  buildInputs = [
    jdk
    maven
  ];
  JAVA_HOME = "${pkgs.jdk.home}";
}
