//  IMPORT LIBS
import processing.serial.*;

Serial arduinoPort;



int baudRate = 9600;
//String followers; 


void setup() {
  println(Serial.list());
  arduinoPort = new Serial(this, Serial.list()[4], 9600);
  frameRate(1);
}

void getValue() {
  //PUT YOUR TWITTER CODE HERE TO PULL TWEETS
    //return YOUR TWITTER RESULTS HERE;
    for (int i = 125; i < 255; i = i+1) {
    int myVar = i;
    int myVar2 = i-15;
    String followers = myVar + ";" + myVar2;
    println(followers);
    arduinoPort.write("hello");      
    delay(1000);
  }    
} 

/* void getValue2() {
  //PUT YOUR TWITTER CODE HERE TO PULL TWEETS
    //return YOUR TWITTER RESULTS HERE;
    for (int i = 125; i < 255; i = i+1) {
    int myVar2 = i;
    println(myVar2);
    arduinoPort2.write(myVar2);      
    delay(1000);
  }    
}
*/

void draw() {
  getValue();
}
