class Star {
  int hab;
  String displayName;
  float distance, Xg, Yg, zZ;
  float absMag;
  
  
  Star(TableRow starInfo)
  {
    this.hab = starInfo.getInt(2);
    this.displayName = starInfo.getString(3);
    this.distance = starInfo.getFloat(12);
    this.Xg = starInfo.getFloat(13);
    this.Yg = starInfo.getFloat(14);
    this.Zg = starInfo.getFloat(15);
    this.absMag = starInfo.getFloat(16);
  }
  
}