				.syntax         unified
				.cpu            cortex-m4
				.text
				// int32_t Return32Bits(void)
				.global         Return32Bits
				.thumb_func
				.align
Return32Bits:	// Implement me
				// Implement me
				// Implement me        
				BX LR

				// int64_t Return64Bits(void) ;
				.global         Return64Bits
				.thumb_func
				.align
Return64Bits:	// Implement me
				// Implement me
				// Implement me
				BX LR

				// uint8_t Add8Bits(uint8_t x, uint8_t y)
				.global         Add8Bits
				.thumb_func
				.align
Add8Bits:		// Implement me
				// Implement me
				// Implement me
				BX LR

				// uint32_t FactSum32(uint32_t x, uint32_t y)
				.global         FactSum32
				.thumb_func
				.align
FactSum32:		// Implement me
				// Implement me
				// Implement me
				BX LR

				// uint32_t XPlusGCD(uint32_t x, uint32_t y, uint32_t z)
				.global         XPlusGCD
				.thumb_func
				.align
XPlusGCD:		// Implement me
				// Implement me
				// Implement me
				BX LR
				.end
