			.syntax	unified
			.cpu	cortex-m4
			.text
			.global	PutNibble
			.thumb_func
			.align
			// void PutNibble(void *nibbles, uint32_t index, uint32_t nibble) ;
PutNibble:	// ImplementMe
			// ImplementMe
			// ImplementMe
			BX		LR
			
			.global	GetNibble
			.thumb_func
			.align
			// uint32_t GetNibble(void *nibbles, uint32_t index) ;
GetNibble:	// ImplementMe
			// ImplementMe
			// ImplementMe
			BX		LR
			.end
