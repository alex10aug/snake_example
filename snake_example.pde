//create arrays to store x and y coordinates
//create variables for diameter and radius
int[] x = new int[20];
int[] y = new int[x.length];
int d = 10;
int r = d/2;

void setup() {
  size(500,500);
//Assign starting x and y values
//For now, I'm creating a straight line
//Each x coordinate is one diameter further over than the one before it
  for (int i = 0; i < x.length; i++) {
    x[i] = d*3 + i*d;
    y[i] = 30;
  }
}

void draw() {
  //use a for loop to draw a circle with each set of values in the two arrays
  for (int i = 0; i < x.length; i++) {
    ellipse(x[i], y[i], d, d);
  }
}

