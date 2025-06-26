{config, ...}: {
   zramSwap = {
    enable = true;
    memoryPercent = 50;
    algorithm = "lz4";
  };
}