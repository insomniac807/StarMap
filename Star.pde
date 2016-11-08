class Star {
  int hab;
  String displayName;
  float distance, Xg, Yg, Zg;
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
  
  String toString()
  {
    String habita = String. valueOf(this.hab);
    String dis = String.valueOf(this.distance);
    String xg = String.valueOf(this.Xg);
    String yg = String.valueOf(this.Yg);
    String zg = String.valueOf(this.Zg);
    String absMag = String.valueOf(this.absMag);
    return habita+" "+this.displayName+" "+dis+" "+xg+" "+yg+" "+zg+" "+absMag;
  }
  
}