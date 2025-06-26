{config, pkgs, ...}: {
   # Configuração específica para gpu fudida | Vaapi: 1
  nixpkgs.config.packageOverrides = pkgs: {
    intel-vaapi-driver = pkgs.intel-vaapi-driver.override {enableHybridCodec = true;};
  };
  # Hardware e Gráficos | GPU & Vaapi: 1.1
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      intel-vaapi-driver # i965 
      libvdpau-va-gl
    ];
  };
  environment.sessionVariables = { 
    LIBVA_DRIVER_NAME = "i965"; # i965 é mais estável para Bay Trail
    VDPAU_DRIVER = "va_gl"; # Melhor compatibilidade com VDPAU  
  };  
  boot.kernelParams = [
    "i915.enable_rc6=1" # Power management.
    "i915.enable_psr=0" # Desativa PSR (pode causar problemas em Bay Trail).
  ];
}