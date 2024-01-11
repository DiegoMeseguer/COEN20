			.syntax     unified
			.cpu        cortex-m4
			.text
			//                         R0         R1            R2            R3
			// int32_t MxPlusB(int32_t x, int32_t mtop, int32_t mbtm, int32_t b) ;
			.global     MxPlusB
			.thumb_func
			.align
MxPlusB:	PUSH {R4-R12}
			MUL R4, R1, R0
			MUL R5, R4, R2
			ASR R6, R5, 31
			MUL R7, R6, R2
			LSL R8, R7, 1
			ADD R9, R8, R2
			LDR R5,=2
			SDIV R10, R9, R5
			MUL R11, R1, R0
			ADD R12, R11, R10
			SDIV R0, R12, R2
			ADD R0, R0, R3
			POP {R4-R12}
			BX          LR
			.end
