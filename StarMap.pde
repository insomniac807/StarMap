ArrayList<Star> stars = new ArrayList<Star>();


void setup()
{
  size(800,800);
  Table starFile = loadTable("HabHYGG15ly", "headers");
  for(TableRow row : starFile.rows())
  {
    stars.add(new Star(row));
  }
}

void draw()
{}