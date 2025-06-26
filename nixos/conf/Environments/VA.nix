{config, ...}: {  
  environment.sessionVariables = {

    ## QT
    QT_QPA_PLATFORMTHEME = "qt6ct";
   # QT_STYLE_OVERRIDE = "gtk2";

    ## XDG USER DIRS
    XDG_DOCUMENTS_DIR = "$HOME/Documentos";
    XDG_DOWNLOAD_DIR = "$HOME/Downloads";
    XDG_MUSIC_DIR = "$HOME/Música";
    XDG_PICTURES_DIR = "$HOME/Imagens";
    XDG_VIDEOS_DIR = "$HOME/Vídeos";
  
  };
}