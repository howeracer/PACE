#include <fstream>
#include <iostream>
#include <unistd.h>
int main(int argc, char** argv) {
    char data[] = "+12-32+34$";  //Random data we want to send, NOTE THE NEW FORMATTING METHOD
    FILE *file;
    file = fopen("/dev/ttyACM0","w");  //Opening device file
    if (file == NULL){
      std::cerr << "Failed to Open Stream" << std::endl;
    } 
    
     int i = 0;
    for(i = 0 ; i < 9 ; i++)
    {
        fprintf(file,"%c",data[i]); //Writing to the file
        fprintf(file,"%c",','); //To separate digits

        
	// sleep(1);
    }
    fflush(file);
    fclose(file);

    
    std::cout << "Success" << std::endl;
}
