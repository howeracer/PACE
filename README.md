### Installation

##### To install and build the executable for this project you must first clone it to your local machine.
###### to do so run git clone https://github.com/howeracer/PACE.git
##### Afterwards you must install the necessary libraries in order to run this program
###### Please run the following commands to do so
###### sudo apt install cmake
###### sudo apt-get install libopencv-dev python-opencv
###### sudo apt-get install libtbb-dev
###### sudo apt-get install libboost-all-dev

### ##Run Executable

##### First, you must build the exectuable file
###### you can do so by navigating to the makefile in PACE/build/cmd and run the command "make" in your terminal.
##### to run the executable file with an internal computer camera, run the command "./PupilTrackerCmd 0"
##### to run the executable file with an external camera, run the command "./PupilTrackerCmd 1"

### Extra Notes

### if the executable file doesn't buildm try manualing deleting the file called CMakeCache.txt in PACE/build
