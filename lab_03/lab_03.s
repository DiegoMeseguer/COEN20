						.syntax		unified
						.cpu		cortex-m4
						.text
						// ----------------------------------------------------------
						// unsigned HalfWordAccess(int16_t *src) ;
						// ----------------------------------------------------------
						.global		HalfWordAccess
						.thumb_func
						.align
HalfWordAccess:			// ImplementMe
						// ImplementMe
						// ImplementMe
						BX			LR
	
						// ----------------------------------------------------------
						// unsigned FullWordAccess(int32_t *src) ;
						// ----------------------------------------------------------
						.global		FullWordAccess
						.thumb_func
						.align
FullWordAccess:			// ImplementMe
						// ImplementMe
						// ImplementMe
						BX          LR
	
						// ----------------------------------------------------------
						// unsigned NoAddressDependency(uint32_t *src) ;
						// ----------------------------------------------------------
						.global     NoAddressDependency
						.thumb_func
						.align
NoAddressDependency:	// ImplementMe
						// ImplementMe
						// ImplementMe
						BX			LR
	
						// ----------------------------------------------------------
						// unsigned AddressDependency(uint32_t *src) ;
						// ----------------------------------------------------------
						.global		AddressDependency
						.thumb_func
						.align
AddressDependency:		// ImplementMe
						// ImplementMe
						// ImplementMe
						BX			LR

						// ----------------------------------------------------------
						// unsigned NoDataDependency(float f1) ;
						// ----------------------------------------------------------
						.global		NoDataDependency
						.thumb_func
						.align
NoDataDependency:		// ImplementMe
						// ImplementMe
						// ImplementMe
						BX			LR
	
						// ----------------------------------------------------------
						// unsigned DataDependency(float f1) ;
						// ----------------------------------------------------------
						.global		DataDependency
						.thumb_func
						.align
DataDependency:			// ImplementMe
						// ImplementMe
						// ImplementMe
						BX			LR
	
						// ----------------------------------------------------------
						// void VDIVOverlap(float dividend, float divisor) ;
						// ----------------------------------------------------------
						.global		VDIVOverlap
						.thumb_func
						.align
VDIVOverlap:			// ImplementMe
						// ImplementMe
						// ImplementMe
						BX			LR
						.end
