//create arrays to store x and y coordinates
//create variables for diameter and radius
int[] x = new int[20];
int[] y = new int[x.length];
int d = 10;
int r = d/2;

void setup() {

  size(500, 500);
  //Assign starting x and y values
  //For now, I'm creating a straight line
  //Each x coordinate is one diameter further over than the one before it
  for (int i = 0; i < x.length; i++) {
    x[i] = d*3 + i*d;
    y[i] = 30;
  }
}

void draw() {
  background(0);
  //use a for loop to draw a circle with each set of values in the two arrays
  //by switching the order, I made the 'head' draw above the 'tail'
  for (int i = x.length-1; i >0; i--) {
    ellipse(x[i], y[i], d, d);
  }
  /*
  To make the snake move, I'm going to move the second-to-last set of values into
   the last spot in the arrays, the third-to-last set of values into the second-to-last 
   spot in the arrays, and so on.  After I move the first set of values into the second
   spot, I'll create a new value for the first spot in the arrays.
   */

  for (int i = x.length-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }

  //Now that I know how to make it move, let's change where the new coordinate goes to based on the keyboard
  if (keyPressed) {
    if (key == 'w') {
      //move up (decrease the y value) if 'd' is pressed
      y[0] -= d;
    }
    if (key == 'a') {
      //move left (decrease the x value) if 'a' is pressed
      x[0] -= d;
    }
    if (key == 's') {
      //move down (increase the y value) if 's' is pressed
      y[0] += d;
    }
    if (key == 'd') {
      //move right (increase the x value) if 'd' is pressed
      x[0] += d;
    }
  }
}

