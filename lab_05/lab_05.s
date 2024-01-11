			// void CopyCell(uint32_t *dst, uint32_t *src) ;		// R0 = dst, R1 = src
			.syntax     unified
			.cpu        cortex-m4
			.text
			.global		CopyCell
			.thumb_func
			.align
CopyCell:	LDR R2,=0		//initialize row = 0
			PUSH {R4}
			
			

NextRow1:	CMP R2,60		//if(row >= 60)
			BHS EndRows1
			LDR R3,=0		//initialize col = 0


NextCol1:	CMP R3,60		//if(col >= 60)
			BHS EndCols1
			
			LDR R4,[R1,R3,LSL 2]	//Load src[col] in R4
			STR R4,[R0,R3,LSL 2]	//dst[col] = src[col]
			ADD R3,R3,1
			B NextCol1

EndCols1:	ADD R0,R0,960
			ADD R1,R1,960
			ADD R2,R2,1
			B NextRow1

EndRows1:	POP {R4}
			BX			LR

			// void FillCell(uint32_t *dst, uint32_t color) ;		// R0 = dst, R1 = color
			.global		FillCell
			.thumb_func
			.align
FillCell:	LDR R2,=0		//intialize row = 0
			
			

NextRow2:	CMP R2,60		//if(row >= 60)
			BHS EndRows2 
			LDR R3,=0		//initialize col = 0
			
NextCol2:	CMP R3, 60		//if(col >= 60)
			BHS EndCols2
			
			STR R1,[R0,R3,LSL 2]		//dst[col] = pixel
			ADD R3,R3,1		//col++
			B NextCol2
EndCols2:	ADD R0,R0,960				//dst += 240
			ADD R2,R2,1		//row++
			B NextRow2

EndRows2:	BX			LR
			.end
