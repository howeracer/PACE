#include <SPI.h>
#include <SD.h>

// Variables for parsing
char static myFileName[16] = {'\0'}; 
int static number = 1;
int static timer;
int timestamp;
String buf;
String buf1;
String buf2;
String buf3;
int angle1 = 0;
int angle2 = 0;
int angle3 = 0;
int countAnglesRecorded = 0;
int countButtonPresses = 0;
const int cs = 10; // chip select pin
File static myFile; // file we are writing to

// Functions
void setupComputerComm(); // Opens up communication line with laptop
void setupSD();          // Set up the SD card
void getAngleData();    // Big function to get angle data
void removeCommas();    // Functions to parse the incoming data
void parseAngles();
void converToInt();
void writeAnglesToSD(); // Record data to SD

void setup() {
  pinMode(13, OUTPUT);
  digitalWrite(13, LOW);
  pinMode(7, INPUT); // This is our push button pin
  pinMode(4, INPUT); // Input from other Arduino to know when test is over
  
  setupComputerComm();
  
  setupSD();
  // May put inside setupSD()
  nameFile();
  while(true)
  {
  if (validFileName())
  {
    break;
  }
  }
  Serial.println("ok");
}

void loop() {
    
    while(1){ // Waiting for button press
      if(digitalRead(7) == HIGH){
        countButtonPresses++;
        timestamp= millis();
        break;
      }
    }

    while(1){

       if(countButtonPresses==6){ //check if all tests are finished ** change number from 6 to 'number of tests + 1' (one press to start each test, then one for end) **
        myFile.println("Finished");
        myFile.close();
        Serial.println("Finished");
        while(1){}
       } 
       
      getAngleData(); //When call this function, waits inside until receives data

      timer= millis() - timestamp;
      Serial.print(angle1);
      Serial.print(',');
      Serial.print(angle2);
      Serial.print(',');
      Serial.print(angle3);
      Serial.print(',');
      Serial.println(timer);
      writeAnglesToSD();

   //   countAnglesRecorded++;

      if(digitalRead(4) == HIGH){  // Check if signal from other Arduino is high to know test is over
        Serial.println("******");
        myFile.println("******");
       // countAnglesRecorded= 0;
        break;
      }
      
      delay(500);

    }
}

void setupComputerComm(){
  Serial.begin(9600);
  //Waits until serial connection is online
  while(!Serial){}
  return;
}

void setupSD(){
 //Checks to insure that SD Card initializes correctly
 if (!SD.begin(cs)) {
    //Serial.println("initialization failed!");
    //turn on an LED
    while(1){}
  }
  return;
}

void removeCommas(){
  int lenbuff = buf.length();
    //There can be at most 9 commas
    int most_commas = 9;
    int comma_place[most_commas];
    for (int j = 0; j<most_commas; j++)
      comma_place[j] = 0;
    
    //Go through the string and make the locations of each comma
    int i = 0; int k = 0;
    while(i<lenbuff){
      if (buf.charAt(i) == ','){
        comma_place[k] = i;
        k++;
      }
      i++;
    }

    //Go through the sting and delete the commas
     for(int loc = most_commas-1; loc >= 0; loc--){
      if(comma_place[loc] != 0){
        buf.remove(comma_place[loc],1);
      }
     }
}

void parseAngles(){
  //Parse out each angle
    buf1 = buf.substring(0,3);
    buf2 = buf.substring(3,6);
    buf3 = buf.substring(6,9);
}
//eventually want to convert to floating point numbers
void convertToInt(){
  //Convert each string to an int
    angle1 = buf1.toInt();
    angle2 = buf2.toInt();
    angle3 = buf3.toInt();
}

void writeAnglesToSD(){
    myFile.print(angle1);
    myFile.print(',');
    myFile.print(angle2);
    myFile.print(',');
    myFile.print(angle3);
    myFile.print(',');
    myFile.println(timer);
   // myFile.close();
}

void getAngleData(){
  if(Serial.available() > 0){
    buf = Serial.readStringUntil('$');
    removeCommas();
    parseAngles();
    convertToInt();
  }
}

void nameFile(){
 sprintf(myFileName,"test%d.txt",number);
}

boolean validFileName(){
  if (SD.open(myFileName, FILE_READ)){
    number++;
    nameFile();
    return false;
  }
  myFile=SD.open(myFileName, FILE_WRITE); 
  return true;
}

/*
 * when push button is pressed
 * timestamp = millis() 
 * when data is sent to SD card
 * timer = millis() - timestamp
 * 
 * send timer to sd card
 */

