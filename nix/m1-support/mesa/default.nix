{ config, lib, pkgs, ... }:

{
  config = {
    hardware.opengl.enable = true;
    hardware.opengl.package = config.hardware.asahi.pkgs.mesa.drivers;
  };
}
