#include <fstream>
#include <iostream>
int main()
{
    std::cout << "Opening fstream" << std::endl;
    std::fstream file("/dev/ttyACM0");
    std::cout << "Sending integer" << std::endl;
    file << 5 << std::endl; // endl does flush, which may be important
    std::cout << "Data Sent" << std::endl;
    std::cout << "Awaiting response" << std::endl;
    std::string response;
    file >> response;
    std::cout << "Response: " << response << std::endl;

    return 0;
}
