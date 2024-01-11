#include <stdint.h>

static const char digits[] = "0123456789ABCDEF";

void Bits2HexString(uint8_t bits, char string[]){
	

	
	int nibb11 = bits >> 4; //We take 4 bits at a time from right to left
	int nibb12 = bits & 0b00001111; //We use a bitmask to extract the other 4 bits

	string[0] = digits[nibb11];
	string[1] = digits[nibb12];
	string[2] = '\0';

}

void Bits2OctalString(uint8_t bits, char string[]){
	
	int nibb11 = bits >> 6; //We extract the first three bits
	int nibb12 = bits & 0b00111000;
	nibb12 = nibb12 >> 3; // We extraact the middle three bits
	int nibb13 = bits & 0b00000111; // We extract the last three bits
	
	string[0] = digits[nibb11];
	string[1] = digits[nibb12];
	string[2] = digits[nibb13];
	string[3] = '\0';
}

void Bits2UnsignedString(uint8_t bits, char string[]){
	
	int firstBit;
	int temp;
	int secondBit;
	int thirdBit;
	
	firstBit = bits / 100; //We extract the MSB using integer division
	temp = bits % 100;
	secondBit = temp / 10; //We extract the bit in the middle using integer division
	thirdBit = temp % 10;  //We extract the LSB using integer division
	
	string[0] = digits[firstBit];
	string[1] = digits[secondBit];
	string[2] = digits[thirdBit];
	string[3] = '\0';
	
}

void Bits2SignMagString(uint8_t bits, char string[]){

		char sign;

		if (bits & 0b10000000)
			sign = '-';
		else
			sign = '+';

		string[0] = sign;
		
 
	Bits2UnsignedString(bits & 0b01111111, &string[1]);
}

// void Bits2TwosCompString(uint8_t bits, char string[]){


	// Bits2UnsignedString
	// Implement Me
// }