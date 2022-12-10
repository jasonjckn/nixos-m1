{ mesa, fetchFromGitLab, lib }:

(mesa.override {
  galliumDrivers = [ "swrast" "asahi" ];
  enableGalliumNine = false;
}).overrideAttrs (oldAttrs: {
  version = "23.0.0";
  src = fetchFromGitLab {
    domain = "gitlab.freedesktop.org";
    owner = "asahi";
    repo = "mesa";
    rev = "af7db4903008b012bca13558261d552ed0828b7d"; # from asahi/main
    hash = "sha256-iI6JGmvlrEEmUklcUFbK1H8WF3hf5j0qsrcL4zKzWB0=";
  };
  mesonFlags = lib.filter (x: !(lib.hasPrefix "-Dxvmc-libs-path=" x)) oldAttrs.mesonFlags;
})
