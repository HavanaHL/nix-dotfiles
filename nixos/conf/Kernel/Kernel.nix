{config, pkgs, lib, ...}: {

  ## Cpupower
  boot.kernelPackages = pkgs.linuxKernel.packages.linux_6_15.cpupower

}
