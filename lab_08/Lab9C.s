					.syntax         unified
					.cpu            cortex-m4
					.text
					// float EccentricAnomaly(float e, float M)
					.global         EccentricAnomaly
					.thumb_func
					.align
EccentricAnomaly:	// S0 = e, S1 = M
					PUSH            {LR}
					VPUSH           {S16-S18}
					
					// ImplementMe
					// ImplementMe
					// ImplementMe					
					
					VPOP            {S16-S18}
					POP             {PC}

					// float Kepler(float m, float ecc)
					.global         Kepler
					.thumb_func
					.align
Kepler:				// S0 = m, S1 = ecc
					PUSH            {R3,LR}
					VPUSH           {S16-S19}

					// ImplementMe
					// ImplementMe
					// ImplementMe

					VPOP            {S16-S19}
					POP             {R3,PC}

					.align
epsilon:			.float          1E-6
					.end
