			.syntax		unified
			.cpu		cortex-m4
			.text
			// uint32_t Mul32X10(uint32_t R0_multiplicand) ;
			.global		Mul32X10
			.thumb_func
			.align
Mul32X10:	MOV R1, R0		//save the orginal number
			LSL R0, R0, 3	//mult by 8
			ADD R0, R0, R1	//add one time
			ADD R0, R0, R1	//add one time
			BX			LR

			// uint32_t Mul64X10(uint32_t R1.R0_multiplicand) ;
			.global		Mul64X10
			.thumb_func
			.align
Mul64X10:	MOV R3, R1		//save higher half
			MOV R2, R0		//save lower half
			LSL R1, R1, 3   //shift higher half by 3, mult by 8
			ADD R1, R1, R0, LSR 29  //combine higher half with lower half
			LSL R0, R0, 3	//shift lower half by 3, mult by 8
			ADDS R0, R0, R2	//add one time to lower half, set carry flag
			ADC R1, R1, R3	// add one time to higher half, add carry
			ADDS R0, R0, R2	//add one time to lower half, set carry flag
			ADC R1, R1, R3	//add one time to higher half, add carry
			BX			LR

			// uint32_t Div32X10(uint32_t R0_dividend) ;
			.global		Div32X10
			.thumb_func
			.align
Div32X10:	LDR   R1,=3435973837
			UMULL R2,R1,R1,R0
			LSRS  R0,R1,3
			BX			LR
			.end
