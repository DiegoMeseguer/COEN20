				.syntax         unified
				.cpu            cortex-m4
				.text
				// int32_t Return32Bits(void)
				.global         Return32Bits
				.thumb_func
				.align
Return32Bits:	MOV R0, 10      //We put the value 10 in the R0 register
								//Function expects value in R0
				BX LR

				// int64_t Return64Bits(void) ;
				.global         Return64Bits
				.thumb_func
				.align
Return64Bits:	MOV R0, -10    //This is stored in the least significant 32 bits
				MOV R1, -1     //This is stored in the most significant 32 bits
				BX LR

				// uint8_t Add8Bits(uint8_t x, uint8_t y)
				.global         Add8Bits
				.thumb_func
				.align
Add8Bits:		ADD R0, R0, R1
				UXTB R0, R0   //extends the 8-bit value to an 32-bit value
				BX LR

				
				
				// uint32_t FactSum32(uint32_t x, uint32_t y)
				.global         FactSum32
				.thumb_func
				.align
				
			
				
FactSum32:		push {R4,LR} //save the return address since BL Factorial will overwrite LR
				ADD R0, R0, R1
				BL Factorial
				pop {R4,PC} //Put the return address back in PC so we can return

			
				

				// uint32_t XPlusGCD(uint32_t x, uint32_t y, uint32_t z)
				.global         XPlusGCD
				.thumb_func
				.align
				
				
XPlusGCD:		push {R4,LR} //save the return address since BL gcd will overwrite LR
				MOV R4, R0
				MOV R0, R1
				MOV R1, R2
				BL gcd
				ADD R0, R0, R4 //Add the result of GCD to the variable x to obtain our final result
				pop {R4,PC} //Put the return address back in PC so we can return
				.end
