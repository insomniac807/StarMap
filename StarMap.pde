ArrayList<Star> stars = new ArrayList<Star>();


void setup()
{
  size(800,800);
  loadData();
  printStars();
}

void draw()
{
  background(0);
  drawGrid();
}

void loadData()
{
  Table starFile = loadTable("HabHYG15ly.csv", "header");
  for(TableRow row : starFile.rows())
  {
    stars.add(new Star(row));
  }
}


void printStars()
{
  for(Star star : stars)
  {
    star.toString();
    System.out.println(star);
  }
}


void drawGrid()
{
   stroke(120, 0, 170);
   noFill();
   float w, h;
   w = width-100;
   h = height-100;
   
   float boxWidth, boxHeight;
   boxWidth = w/11;
   boxHeight = h/11;
   
   translate(50,50);
   rect(0,0,w,h);
   
   for(int i=0; i<11; i++)
   {
       line(i*boxWidth, 0, i*boxWidth, h);
       line(0, i*boxHeight, w, i*boxHeight);
   }
   
}