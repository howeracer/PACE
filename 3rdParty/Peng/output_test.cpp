#include <fstream>
#include <iostream>
#include <unistd.h>
int main(int argc, char** argv) {
  int data[] = {10,5,263};  //Random data we want to send
    FILE *file;
    file = fopen("/dev/ttyACM0","w");  //Opening device file
    int i = 0;
    for(i = 0 ; i < 3 ; i++)
    {
      fprintf(file,"%d",data[i]); //Writing to the file
      fprintf(file,"%c",','); //To separate digits
      
      sleep(1);
    }
    fclose(file);	
}
