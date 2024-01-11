			.syntax	unified
			.cpu	cortex-m4
			.text
			.global	PutNibble
			.thumb_func
			.align
			// void PutNibble(void *nibbles, uint32_t index, uint32_t nibble) ;
PutNibble:	PUSH {R4}
			LSR R3, R1, 1		// which >> 1
			ADD R0, R3, R0		// pbyte = (uint8_t *) nibbles + (which >> 1) ;
			LDRB R3,[R0]
			AND R4, R1, 1		// (which & 1)
			CMP R4, 1			//	if ((which & 1) == 1)
			ITTEE EQ
			ANDEQ R3, R3, 0b00001111		// *pbyte &= 0b00001111 ;
			ORREQ R3, R3, R2, LSL 4			// *pbyte |= value << 4 ;  
			ANDNE R3, R3, 0b11110000		// *pbyte &= 0b11110000 ;	
			ORRNE R3, R3, R2				// *pbyte |= value ;
			STRB R3,[R0]
			POP {R4}
			BX		LR
			
			.global	GetNibble
			.thumb_func
			.align
			// uint32_t GetNibble(void *nibbles, uint32_t index) ;
GetNibble:	LSR R3, R1, 1		// which >> 1
			LDRB R3,[R0,R3]		// byte = ((uint8_t *) nibbles)[which >> 1];
			AND R2, R1, 1		// (which & 1)
			CMP R2, 1			//	if ((which & 1) == 1)
			ITEE EQ
			LSREQ R3, R3, 4		// byte >>= 4
			LSLNE R3, R3, 4		// byte <<= 4
			LSRNE R3, R3, 4		// byte >>= 4
			MOV R0, R3
			AND R0, R0, 15		// return (uint32_t) (byte & 0b00001111)
			
			
		
			BX		LR
			.end
