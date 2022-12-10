{ config, lib, pkgs, ... }:

{
  config = {
    hardware.opengl.enable = true;
    hardware.opengl.package = pkgs.mesaAsahi;
    # hardware.opengl.package = pkgs.mesa;

    hardware.opengl.driSupport = true;
  };
}
