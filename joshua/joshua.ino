#include <SPI.h>
#include <SD.h>

// Variables for parsing
int static number = 1;
String buf;
String buf1;
String buf2;
String buf3;
int angle1 = 0;
int angle2 = 0;
int angle3 = 0;
int countAnglesRecorded = 0;
int countButtonPresses = 0;


// Variables for SD writing
const int cs = 10; // chip select pin
File static myFile;

//Opens up communication line with laptop
void setupComputerComm();

//Set up the SD card
void setupSD();

//Big function to get angle data
void getAngleData();

//Functions to parse the incoming data
void removeCommas();
void parseAngles();
void converToInt();

//Record data to SD
void writeAnglesToSD();

void setup() {
  pinMode(13, OUTPUT);
  digitalWrite(13,LOW);
  
  setupComputerComm();
  
  setupSD();
  // May put inside setupSD()
 while (nameFile() == false)
 {
  nameFile();
 }
  
}

void loop() {
    getAngleData(); //When call this function, waits inside until receives data
//  Serial.print("Hello");

/*    if (angle1==0 && angle2==0 && angle3==0){
      delay(1000);
    }
    
    else{
    */
      Serial.print(angle1);
      Serial.print(',');
      Serial.print(angle2);
      Serial.print(',');
      Serial.println(angle3);
      writeAnglesToSD();

      countAnglesRecorded++;

      if(countAnglesRecorded==5){
        Serial.println("******");
        myFile.println("******");
        countButtonPresses++;
        countAnglesRecorded= 0;
      }

      if(countButtonPresses==3){
        myFile.println("Finished");
        myFile.close();
        Serial.println("Finished");
        while(1){}
       } 
    
//    digitalWrite(13,HIGH);
      delay(1000);
//    digitalWrite(13,LOW);
  //  }

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
    myFile.println(angle3);
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
boolean nameFile(){
  char myFileName[13];
  strcat(myFileName, "test");
  strcat(myFileName, number);
  strcat(myFileName, ".txt");
  if (SD.open(myFileName, FILE_READ)){
    number++;
    return false;
  }
  myFile = SD.open(myFileName, FILE_WRITE);
  return true;
}

