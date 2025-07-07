{config, ...}: {
    environment.shellAliases = {
    YTM = "yt-dlp -x --audio-format mp3 --audio-quality 320k --embed-thumbnail --convert-thumbnails jpg --ppa \"EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop='min(iw,ih):min(iw,ih)'\"";
    YTMP = "yt-dlp -x --audio-format mp3 --audio-quality 320k --embed-thumbnail --convert-thumbnails jpg --ppa \"EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop='min(iw,ih):min(iw,ih)'\" --yes-playlist";
    nxs = "sudo nixos-rebuild switch --flake path:/etc/nixos#Exodus";
    hms = "home-manager switch --flake path:/etc/nixos#deive@Exodus";
    nxc = "nix-store --gc";
    fu = "sudo nix flake update --flake /etc/nixos";
  };
}
