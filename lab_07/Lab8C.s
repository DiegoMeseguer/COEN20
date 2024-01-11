			.syntax		unified
			.cpu		cortex-m4
			.text
			// uint32_t Mul32X10(uint32_t R0_multiplicand) ;
			.global		Mul32X10
			.thumb_func
			.align
Mul32X10:	// ImplementMe
			BX			LR

			// uint32_t Mul64X10(uint32_t R1.R0_multiplicand) ;
			.global		Mul64X10
			.thumb_func
			.align
Mul64X10:	// ImplementMe
			BX			LR

			// uint32_t Div32X10(uint32_t R0_dividend) ;
			.global		Div32X10
			.thumb_func
			.align
Div32X10:	// ImplementMe
			BX			LR
			.end
