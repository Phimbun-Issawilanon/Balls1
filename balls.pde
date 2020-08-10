class Ball{
  float position_x , position_y;
  float size;
  Ball(float position_x1, float position_y1, float size1){
    position_x = position_x1 ;
    position_y  = position_y1;
    size  = size1;
  }
  void draw(){
    ellipse(position_x, position_y, size, size);
  }
}
int unit = 10;
Ball[] ball;
void setup() {
  size(800, 660);
  ball = new Ball[unit];
  for (int n = 0 ; n < unit; n++){
    float randx= random(600);
    float randy = random(700);
    float size = random(300);
    ball[n] = new Ball(randx, randy, size);
    ball[n].draw();
  }

}
