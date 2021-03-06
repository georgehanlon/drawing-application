void loadAnImage(File fileNameObj){
  String pathAndFileName = fileNameObj.getAbsolutePath();
  PImage img = loadImage(pathAndFileName); 
  this.backgroundImage = img;
}

void folderSelected(File selection){
  if (selection == null){
    return;
  }
  else{
    String dir2 = selection.getPath() + "\\";
    if (backgroundImage != null){
      backgroundImage.save(dir2 + "Output("+outputNum+").jpg");
    } else {
    save(dir2 + "Output("+outputNum+").jpg");
    }
    outputNum += 1;
  }
}
