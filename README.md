Lab2
====
#Prelab
###Truth Table
![alt text][logo1]

[logo1]: /truthtable.JPG

###Schematic
![alt text][logo2]

[logo2]: /Schematic.JPG

###Full Adder Simulation
![alt text][logo3]

[logo3]: /Full_Adder_Sim.JPG

#Lab
###4 Bit Schematic
![alt text](http://cpuville.com/images/adder_10.jpg)

###4 Bit Adder Simulation
![alt text][logo4]

[logo4]: /4bit_adder_sim.JPG


###Analysis
The Adder/Subtractor was created by first making a full adder. The full adder took one bit from A and B as well as a Carry IN. The code was easily tested by using a test bench with all 8 test cases. After that was succesfully simulated, the four bit adder was made. this used the component of the full adder and put four in a row. the carry out of the first was used in the second and so on. As seen in the schematic.After the code was correct, it was tested using a looping testbench that ran through all 512 different test scenarios.The subtractor was then made by using a button on the nexys 2. when pressed it gave a value of 1, otherwise it was a 0. the b values were converted in to a two's complement which was added then to the value of 1 when the button was pressed. this allowed for full functionality of the subtractor as check and demo'd in class. 



####Documentation:
I used this website to learn how to do the looping test bench and a few other things
http://esd.cs.ucr.edu/labs/adder/adder.html
