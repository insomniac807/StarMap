ArrayList<Star> stars = new ArrayList<Star>();


void setup()
{
  size(800,800);
  loadData();
  printStars();
}

void draw()
{}

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