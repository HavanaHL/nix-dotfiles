{pkgs, ...}: {
 environment.systemPackages = with pkgs; [

  ## Multimedia
  vlc
  mpv
  yt-dlp
  ffmpeg
  satty


  ## Jogos y games
  steam

  ## Sys
  wget
  ntfs3g
  exfat
  fuse
  intel-media-sdk

  ## Acessorios
  peazip
  unrar
  htop
  btop
  tmux
  unzip
  nwg-look
  gimp3
  pavucontrol
  wineWowPackages.stable
  nvtopPackages.intel
  playerctl
  git
  git-filter-repo
  xfce.mousepad
  qt6ct
  xdg-user-dirs
  mate.engrampa
  xfce.thunar
  
 ];
}
