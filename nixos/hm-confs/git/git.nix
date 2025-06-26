{config, ...}: { 
 programs.git = {
    enable = true;
    userName = "HavanaHL";
    userEmail = "X";
    extraConfig.credential.helper = "store";
  };
}

