ArrayList<Star> stars = new ArrayList<Star>();
float w,h;

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
  plotStars();
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
   w = width-100;
   h = height-100;
   
   float boxWidth, boxHeight;
   boxWidth = w/10;
   boxHeight = h/10;
   
   pushMatrix();
     translate(50,50);
     rect(0,0,w,h);
     int point1 = 5;
     int point2 = -5;
     for(int i=0; i<=10; i++)
     {
         text(point1, i*boxWidth, -20);
         line(i*boxWidth, 0, i*boxWidth, h);
         text(point2, -20, i*boxHeight);
         line(0, i*boxHeight, w, i*boxHeight);
         --point1;
         ++point2;    
     }
   popMatrix();
   
}//end drawGrid()



void plotStars()
{
   for(Star aStar : stars)
   {
     float px = map(aStar.Xg, -5, 5, 0, w);
     float py = map(aStar.Yg, -5, 5, 0, h);
     pushMatrix();
       translate(50,50);
       stroke(255, 255, 0);
       line(px, py-2, px, py+2);
       line(px-2, py, px+2, py);
       stroke(255,0,0);
       ellipse(px,py, aStar.absMag, aStar.absMag);
       text(aStar.displayName, px+10, py);
     popMatrix();
   }
}



void mousePressed()
{ 
  float x = pmouseX;
  float y = pmouseY;
  stroke(255,255,0);
  line(mouseX, mouseY, x, y);
  
}