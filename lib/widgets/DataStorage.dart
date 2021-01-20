class DataStorage{
  List imagesPath = [];
  List imiona = [];
  List opisy = [];

  DataStorage();

  void addImagesPath(String string){
    imagesPath.add(string);
  }

  void addImiona(String string){
    imiona.add(string);
  }

  void addOpisy(String string){
    opisy.add(string);
  }

  List getImagesPath(){
    return imagesPath;
  }

  List getImiona(){
    return imiona;
  }
  List getOpisy(){
    return opisy;
  }

}