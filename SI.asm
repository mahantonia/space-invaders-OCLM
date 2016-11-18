TITLE	BALL
.MODEL	small
.STACK	1000H
PRINTA_OBJETO	MACRO	MATRIZ, COR, XI, YI, LARGURA, TOTAL
	PUSH 	CX
	PUSH	SI
	;ZERANDO VARIAVEIS, PARA NAO TER NEHUMA INTERFERENCIA
	MOV	X_INICIO,0
	MOV	Y_INICIO, 0
	MOV	TOTAL_M,0
	MOV	LARGURA_M,0
	XOR	SI,SI

	;INICIALIZANDO VARIAVEIS PARA CHAMAR PROCESIMENTO
	MOV	AL, COR
	MOV	X_INICIO, XI
	MOV	Y_INICIO, YI
	MOV	TOTAL_M, TOTAL
	MOV	LARGURA_M, LARGURA
	LEA	SI, MATRIZ

	;CHAMAR PROC 'DISPLAY'
	CALL	 DISPLAY_OBJ

	POP	SI
	POP 	CX

	ENDM
.DATA
MSG 	DB	0AH,0AH,0AH,0AH,0DH,'     ','Bem vindo ao Space Invaders',0AH,0AH,0AH,0DH,'$'

MSG1	DB	0AH,0AH,0AH,0AH,0AH,0AH,0AH,0DH,'  ','Pressione Espaco para comecar o jogo',0AH,0DH,'$'

MSG2	DB	0AH,0AH,0DH,'Instrucao: ',0AH,0AH,0AH,0DH, 'Utilize "a" e "d" para movimentar a nave', 0AH,0AH,0AH,0DH, 'Espaco para atirar',0AH,0AH,0AH,0DH, 'Esc para sair do jogo $'

MSG3	DB	'        $'

MSG4	DB	0AH,0AH,0AH,0AH,0AH,0AH,0AH, '             ','GAME OVER!!!!',0AH,0AH,0AH,'          ','JOGAR NOVAMENTE(S/N) $'

MSG5	DB	0AH,0AH, '        ','Parabens Voce ganhou!!!!',0AH,0AH,'          ','JOGAR NOVAMENTE(S/N) $'

BLOCO_1010	DB 	1,1,1,1,1,1,1,1,1,1
			DB 	1,1,1,1,1,1,1,1,1,1
			DB 	1,1,1,1,1,1,1,1,1,1
			DB 	1,1,1,1,1,1,1,1,1,1
			DB 	1,1,1,1,1,1,1,1,1,1
			DB 	1,1,1,1,1,1,1,1,1,1
			DB 	1,1,1,1,1,1,1,1,1,1
			DB 	1,1,1,1,1,1,1,1,1,1
			DB 	1,1,1,1,1,1,1,1,1,1
			DB 	1,1,1,1,1,1,1,1,1,1


CORACAO1	DB	0,0,0,0,0,0,0,0,0
			DB	0,1,1,1,0,1,1,1,0
			DB	1,1,1,1,1,1,1,1,1
			DB	1,1,1,1,1,1,1,1,1
			DB	0,1,1,1,1,1,1,1,0
			DB	0,0,1,1,1,1,1,0,0
			DB	0,0,0,0,1,0,0,0,0
			;PRINTA_OBJETO	CORACAO, 39, X, Y, 9, 63

CORACA02	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
			DB	0,1,1,1,0,1,1,1,0,0,0,1,1,1,0,1,1,1,0
			DB	1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1
			DB	1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1
			DB	0,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,0
			DB	0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,0,0
			DB	0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0

CORACAO3	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
			DB	0,1,1,1,0,1,1,1,0,0,0,1,1,1,0,1,1,1,0,0,0,1,1,1,0,1,1,1,0
			DB	1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1
			DB	1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1
			DB	0,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,0
			DB	0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,0,0
			DB	0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0


SCORE	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,1,1,1,1,0,0,1,1,1,0,0,1,1,0,0,1,1,1,0,0,1,1,1,1,1
		DB	1,0,0,0,0,0,1,0,0,0,0,1,0,0,1,0,1,0,0,1,0,1,0,0,0,0
		DB	0,1,1,1,0,0,1,0,0,0,0,1,0,0,1,0,1,1,1,0,0,1,1,1,1,0
		DB	0,0,0,0,1,0,1,0,0,0,0,1,0,0,1,0,1,0,0,1,0,1,0,0,0,0
		DB	1,1,1,1,0,0,0,1,1,1,0,0,1,1,0,0,1,0,0,1,0,1,1,1,1,1
		;PRINTA_OBJETO	SCORE, 15, X, Y, 26, 156

GORDO	DB	0,0,0,0,1,1,1,1,0,0,0,0
		DB	0,1,1,1,1,1,1,1,1,1,1,0
		DB	1,1,1,1,1,1,1,1,1,1,1,1
		DB	1,1,1,0,0,1,1,0,0,1,1,1
		DB	1,1,1,1,1,1,1,1,1,1,1,1
		DB	0,0,0,1,1,0,0,1,1,0,0,0
		DB	0,0,1,1,0,1,1,0,1,1,0,0
		DB	1,1,0,0,0,0,0,0,0,0,1,1
		;PRINTA_OBJETO	GORDO, 15, X, Y, 11, 88



ALIEN	DB	0,0,1,0,0,0,0,0,1,0,0
		DB	0,0,0,1,0,0,0,1,0,0,0
		DB	0,0,1,1,1,1,1,1,1,0,0
		DB	0,1,1,0,1,1,1,0,1,1,0
		DB	1,1,1,1,1,1,1,1,1,1,1
		DB	1,0,1,1,1,1,1,1,1,0,1
		DB	1,0,1,0,0,0,0,0,1,0,1
		DB	0,0,0,1,1,0,1,1,0,0,0
		;PRINTA_OBJETO	ALIEN, 15, X , Y, 11, 88


LULA	DB	0,0,0,1,1,0,0,0
		DB	0,0,1,1,1,1,0,0
		DB	0,1,1,1,1,1,1,0
		DB	1,1,0,1,1,0,1,1
		DB	1,1,1,1,1,1,1,1
		DB	0,0,1,0,0,1,0,0
		DB	0,1,0,1,1,0,1,0
		DB	1,0,1,0,0,1,0,1
		;PRINTA_OBJETO	lula, 15, X, Y, 8, 64

BARREIRA	DB	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
			DB	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
			DB	1,0,1,1,1,1,1,1,1,0,1,1,0,0,1,1,1,1,0,1
			DB	1,0,0,1,0,1,0,1,1,0,1,1,1,1,1,1,0,1,0,1
			DB	1,0,0,1,0,1,1,0,1,0,1,1,0,0,1,1,1,1,0,1
			DB	1,0,0,1,0,1,0,1,1,0,1,1,0,0,1,1,0,0,0,1
			DB	1,0,0,1,0,1,0,1,1,1,1,1,0,0,1,1,0,0,0,1
			DB	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
			DB	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

BARREIRA_D  DB	1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0
			DB	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
			DB	0,0,0,0,0,0,0,1,1,0,1,0,0,0,0,0,0,0,0,0
			DB	1,0,0,1,0,1,0,1,1,0,0,0,0,0,1,0,0,0,0,0
			DB	1,0,0,1,0,1,1,0,1,0,1,1,0,0,1,1,1,1,0,1
			DB	1,0,0,1,0,1,0,1,1,0,1,1,0,0,1,1,0,0,0,1
			DB	1,0,0,1,0,1,0,1,1,1,1,1,0,0,1,1,0,0,0,1
			DB	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
			DB	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

PLAYER	DB	0,0,0,0,1,0,0,0,0
		DB	0,0,0,1,1,1,0,0,0
		DB	0,0,0,1,1,1,0,0,0
		DB	0,0,1,1,1,1,1,0,0
		DB	0,0,1,1,1,1,1,0,0
		DB	0,1,1,1,0,1,1,1,0
		DB	1,1,1,0,0,0,1,1,1
		DB	0,0,0,0,0,0,0,0,0

TIRO	DB	0,0,0,0,1,0,0,0,0
		DB	0,0,0,0,1,0,0,0,0
		DB	0,0,0,0,1,0,0,0,0
		DB	0,0,0,0,1,0,0,0,0

; STATUS_BARREIRA	DB	21,0,0,0,0,0,0,0,0,0,0,0,33,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,98,0,0,98,0,0,98,0,0,98,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0


MATRIZ_LOGICA	DB	21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33,0,0,0,0,0,0
				DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
				DB	1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0
				DB	2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,0,0,0,0,0,0,0,0,0,0
				DB	2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,0,0,0,0,0,0,0,0,0,0
				DB	3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,0,0,0,0,0,0,0,0,0,0
				DB	3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,0,0,0,0,0,0,0,0,0,0
				DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
				DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
				DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
				DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
				DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
				DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
				DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
				DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
				DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
				DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
				DB	0,0,0,98,0,0,0,0,98,0,0,0,0,98,0,0,0,0,98,0,0,0,0,98,0,0,0,0,0,0,0,0
				DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25
				DB	99,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25,0,0,0,25

MATRIZ_LOGICA_BACK	DB	21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33,0,0,0,0,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
					DB	1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0
					DB	2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,0,0,0,0,0,0,0,0,0,0
					DB	2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,0,0,0,0,0,0,0,0,0,0
					DB	3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,0,0,0,0,0,0,0,0,0,0
					DB	3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,0,0,0,0,0,0,0,0,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
					DB	0,0,0,98,0,0,0,0,98,0,0,0,0,98,0,0,0,0,98,0,0,0,0,98,0,0,0,0,0,0,0,0
					DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25
					DB	99,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,24,0,0,0,24

; PLAYER_MOVIMENTO	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	99,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

; LIMPA_TELA	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
; 		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51

VEL_X	DW	0
VEL_Y	DW	0
IX		DW	0
IY		DW	0
X		DW	0
Y		DW	0
;inicio de variaveis utilizadas pelo PRINTA_OBJETO; NAO MUDAR;;;;;;;;;;;;;;;;;;;
LARGURA_M	DW	0
TOTAL_M		DW	0
X_INICIO	DW	0
Y_INICIO	DW	0
LADO_X		DW	0
LADO_Y		DW	0
COUNT		DW	0
;_________________________________________________________________________________________________
SCORE_SOMADOR		DB	0
DELAY_PARAALIENS	DB	0
MOVIMENTO_DIREITA 	DB	1
DESCE_ALIENS		DB	0

.CODE

MAIN	PROC; inicio do programa _________________________________________________________________________________________________
	CALL	SET_DISPLAY_MODE ;INICIALIZA MODO GRAFICO
	MOV 	AX,@DATA	;INICIALIZA DATA
	MOV 	DS,AX
;_________________________ INCIO MENU _________________________________________________________________________________________________
INICIOMENU:
	LEA 	DX,MSG		;Le mensagem de saudações
	MOV 	AH,9
	INT 	21h

LEA 	DX,MSG1 	;Le mensagem informando o usuario que precisa pressionar o espaço para começar o jogo
	MOV 	AH,9
	INT 	21h

	MOV 	AH,1
	INT 	21h
	CMP		AL, 27
	JE		FIM_MAIN
	CMP 	AL, 32
	JNE 	INICIOMENU

	
	CALL 	SET_DISPLAY_MODE
	
	LEA 	DX,MSG2		;Instrução do jogo 
	MOV 	AH,9
	INT 	21h
	
	
	LEA		DX,MSG1
	MOV 	AH,9
	INT		21h

	MOV 	AH,1
	INT 	21h
	
	CMP 	AL,27
	JE		FIM_MAIN
	CMP 	AL,32
	JNE 	INICIOMENU
	CALL	SET_DISPLAY_MODE
	CALL	INICIO_GAME; comecao o jogo
;_________________________ FIM MENU _________________________________________________________________________________________________
FIM_MAIN:	CALL	FIM

MAIN	ENDP;fim do programa---------------------------------------------------
INICIO_GAME	PROC

INICIO_GAME:
	
	CALL 	VERIFICA_TIRO
	CALL	PRINTA_TUDO

CONT:

	MOV 	AX, 0100h
	INT		16h
	JZ		NAO_SAI


	MOV		AH, 07h
	INT 	21h

	CALL	MOVIMENTO_PLAYER

	INC	DELAY_PARAALIENS
	CMP	DELAY_PARAALIENS,10
	JNE	NAO_MOV_ALIENS
	MOV	DELAY_PARAALIENS,0
	CALL	MOVIMENTO_ALIENS
NAO_MOV_ALIENS:

	CMP	AL,27
	JNE	NAO_SAI

	RET
NAO_SAI:
	CALL	LIMPA_PLAYER
	JMP	INICIO_GAME
	RET

INICIO_GAME	ENDP

MOVIMENTO_PLAYER	PROC
	CMP	AL,97
	JNE	NAO_ESQUERDA
	CALL	MOV_ESQUERDA
	RET

NAO_ESQUERDA:
	CMP	AL, 100
	JNE	NAO_DIREITA
	CALL	MOV_DIREITA

NAO_DIREITA:
	CMP 	AL,32
	JNE		NAO_TIRO
	CALL 	TIRO_1
	
NAO_TIRO:

	RET
MOVIMENTO_PLAYER	ENDP

;_________________________ Inicio game com matriz logica back _________________________________________________________________________________________________
INICIO_GAME2	PROC

INICIO_GAME_2:
	CALL 	SET_DISPLAY_MODE
	
	CALL	VERIFICA_TIRO
	CALL 	PRINTA_TUDO_2
	JA		CONT

INICIO_GAME2	ENDP 

;_________________________ Limpa Player _________________________________________________________________________________________________

LIMPA_PLAYER	PROC

	PUSH	AX
	PUSH	CX
	PUSH	DX

	MOV	AL, 0H
	MOV	CX,0
	MOV	DX,190

INICIO_LIMPAPLAYER:
	MOV	AH,0CH
	INT	10H

	INC	CX
	CMP	CX, 321
	JNE	INICIO_LIMPAPLAYER
	MOV	CX,0
	INC	DX
	CMP	DX,201
	JNE	INICIO_LIMPAPLAYER

	POP	DX
	POP	CX
	POP	AX


; tentativa empurrando a tela para baixo, porem por algum motivo a tela ESTA
; voltando para tela inicial
	; PUSH	AX
	; PUSH	BX
	; PUSH	CX
	; PUSH	DX
	; MOV	BH,07
	; MOV	CX,0
	; MOV	DH,200
	; MOV	DL,200
	; MOV	AL, 0
	; MOV	AH,07H
	;
	; INT	10H
	; PUSH	DX
	; PUSH	CX
	; PUSH	BX
	; POP	AX

	RET

LIMPA_PLAYER	ENDP

MOVIMENTO_ALIENS1	PROC
	PUSH	AX
	PUSH	DX
	PUSH	CX
	LEA	SI,MATRIZ_LOGICA

INICIO_MOVIMENTO_ALIENS1:
	INC	SI
	MOV	DX,[SI]
	CMP	DX,1
	JNE	INICIO_MOVIMENTO_ALIENS1

	MOV	DX,0
	MOV	[SI],DX
	LEA	CX,MATRIZ_LOGICA


	CMP	MOVIMENTO_DIREITA,1
	JNE	MOVIMETO_ESQUERDA

	INC	SI
	MOV	DX,SI
	SUB	DX,CX
	MOV	AX,DX

	MOV	DH,32
	DIV	DH

	CMP	AH,0
	JNE	MOVIMENTO_ALIENS

	MOV	MOVIMENTO_DIREITA,0


	JMP	MOVIMENTO_ALIENS
MOVIMETO_ESQUERDA:
	DEC	SI
	MOV	DX,SI
	SUB	DX,CX
	MOV	AX,DX

	MOV	DH,32
	DIV	DH

	CMP	AH,1
	JNE	MOVIMENTO_ALIENS

	MOV	MOVIMENTO_DIREITA,1


	JMP	MOVIMENTO_ALIENS

MOVIMENTO_ALIENS:

	MOV	DH,1
	MOV	[SI],DH

	RET

MOVIMENTO_ALIENS1	ENDP

MOV_ESQUERDA	PROC
	PUSH	SI
	PUSH	BX
	XOR	SI,SI
	LEA	SI,MATRIZ_LOGICA
INICIO_MOV_ESQUERDA:
	INC	SI
	MOV	BX,[SI]
	CMP	BX,99
	JNE	INICIO_MOV_ESQUERDA

	MOV	BX,0
	MOV	[SI], BX

	DEC	SI
	MOV	BX,[SI]
	CMP	BX,25
	JNE	FIM_MOV_ESQUERDA
	INC	SI

FIM_MOV_ESQUERDA:
	MOV	BX,99
	MOV	[SI], BX

	POP	BX
	POP	SI
	RET

MOV_ESQUERDA	ENDP

MOV_DIREITA	PROC
	PUSH	SI
	PUSH	BX
	XOR	SI,SI
	LEA	SI,MATRIZ_LOGICA
INICIO_MOV_DIREITA:
	INC	SI
	MOV	BX,[SI]
	CMP	BX,99
	JNE	INICIO_MOV_DIREITA

	MOV	BX,0
	MOV	[SI], BX

	INC	SI
	LEA	BX,MATRIZ_LOGICA
	ADD	BX,640
	CMP	BX,SI
	JNE	FIM_MOV_ESQUERDA
	DEC	SI

FIM_MOV_DIREITA:
	MOV	BX,99
	MOV	[SI], BX

	POP	BX
	POP	SI
	RET

MOV_DIREITA	ENDP


;_________________________ TIRO MATA ALIEN _________________________________________________________________________________________________

VERIFICA_TIRO		PROC

	PUSH	DX
	MOV		DX, 77
	LEA 	SI,MATRIZ_LOGICA

ACHA_TIRO_PLAYER:
	
	INC		SI
	
	CMP		[SI], DX
	JNE		ACHA_TIRO_PLAYER
	
	MOV		DX, 78
	MOV		[SI],DX
	
	SUB		SI,32d
	
	MOV		DX,[SI]
	CMP		DX,3
	JNE		NAO_MATOU_O_3
	MOV		DX,0
	MOV		[SI],DX
	
	JMP		ACABA_O_TIRO

	NAO_MATOU_O_3:
	
	; CMP		DX,2
	; JNE		NAO_MATOU_O_2
	; MOV		DX,0
	; MOV		[SI],DX
	; JMP		ACABA_O_TIRO

; NAO_MATOU_O_2:

	; CMP		DX,1
	; JNE		NAO_MATOU_O_1
	; MOV		DX,0
	; MOV		[SI],DX
	; JMP 	ACABA_O_TIRO
	
; NAO_MATOU_O_1:

	MOV		DX,77
	MOV		[SI],DX
	
 ACABA_O_TIRO:
	POP		DX
	
	; CALL	SCORE_SOMA
	RET

VERIFICA_TIRO		ENDP

;_________________________ TIRO _________________________________________________________________________________________________ 
TIRO_1		PROC
	PUSH	DX
	MOV		DX, 99
	LEA 	SI,MATRIZ_LOGICA

ACHA_PLAYER_TIRO:
	
	INC		SI
	
	CMP		[SI], DX
	JNE		ACHA_PLAYER_TIRO
	
	SUB		SI,32D
	
	MOV		DX,77
	MOV		[SI],DX
	
	POP		DX
	RET
	
TIRO_1 	ENDP 
;_________________________ GAME OVER _________________________________________________________________________________________________

GAME_OVER		PROC

INICIO_GAMEOVER:
	CALL 	SET_DISPLAY_MODE
	LEA 	DX,MSG4		;Le mensagem de GAME OVER
	MOV 	AH,9
	INT 	21h

	MOV 	AH,1
	INT 	21h
	CMP		AL, 115
	JNE		SAINDO_DO_GAMEOVER

	CALL 	SET_DISPLAY_MODE
	CALL 	INICIO_GAME_2

SAINDO_DO_GAMEOVER:
	CMP		AL,110
	JNE		INICIO_GAMEOVER

	RET
GAME_OVER		ENDP
;_________________________ Ganhou _________________________________________________________________________________________________

GANHOU_GAME		PROC

INICIO_GANHOUGAME:
	CALL 	SET_DISPLAY_MODE
	LEA 	DX,MSG5		;Le mensagem de GANHOU
	MOV 	AH,9
	INT 	21h

	MOV 	AH,1
	INT 	21h
	CMP		AL, 115
	JNE		SAINDO_DO_GANHOUGAME

	CALL 	SET_DISPLAY_MODE
	CALL 	INICIO_GAME_2


SAINDO_DO_GANHOUGAME:
	CMP		AL,110
	JNE		INICIO_GANHOUGAME

	RET
GANHOU_GAME		ENDP
;_________________________ FIM _________________________________________________________________________________________________
FIM		PROC


	CALL	GAME_OVER
;RENICIALIZA O GRAPHIC DO DOS________________________________
	MOV		AH,0	;SET MODEL
	MOV		AL,3H	;MODE 0bh, 320X200 many COLOR
	INT		10H
	MOV		AH,0BH
	MOV		BH,1
	MOV		BL,1
	INT		10H
;______________________________________________________________

	MOV		AH, 4CH
	INT 	21H
FIM		ENDP



DISPLAY_OBJ		PROC ; funcao auxiliar para printar qualquer objeto------
	MOV		LADO_X,0
	MOV		LADO_Y,0
	MOV		COUNT,0

INICIO:
	MOV		CX, X_INICIO
	ADD		CX, LADO_X
	INC		LADO_X
	MOV		DX, Y_INICIO
	ADD		DX, LADO_Y

	MOV		BL, [SI]

	CMP		BL, 0
	JE		PRINT0

	MOV		AH, 0CH
	INT		10H

PRINT0:	
	INC		SI
	INC		COUNT

	MOV		BX, LARGURA_M
	CMP		LADO_X, BX
	JL		CONTINUA	

	MOV		LADO_X, 0
	INC		LADO_Y

CONTINUA:
	MOV		BX, TOTAL_M
	CMP		COUNT, BX
	JL		INICIO

	RET

DISPLAY_OBJ	ENDP;-------------------------------------------------------

SET_DISPLAY_MODE		PROC;funcao para mudar a o modo de video do dos box
	MOV		AH,0	;SET MODEL
	MOV		AL,13H	;MODE 0bh, 320X200 many COLOR
	INT		10H
	MOV		AH,0BH
	MOV		BH,1
	MOV		BL,1
	
	INT		10H

	RET
SET_DISPLAY_MODE	ENDP;-------------------------------------------------------

PRINTA_TUDO	PROC
	CALL	PRINTA_MATRIZ

PRINTA_TUDO	ENDP

PRINTA_MATRIZ	PROC
	PUSH	CX
	PUSH	DX
	MOV		X,0
	MOV		Y,0
	XOR		SI,SI
	LEA		SI,MATRIZ_LOGICA

	PUSH	BX
	CALL	PRINTA_MATRIZ_AUX
	POP		BX

	POP		CX
	POP		DX

	RET
PRINTA_MATRIZ	ENDP
PRINTA_MATRIZ_AUX		PROC;MATRIZ PARA PRINTAR O QUE ESTIVER NA MATRIZ LOGICA

	MOV		CX,X
	MOV		DX,Y

	MOV		BX,[SI]
	CMP		BX, 2
	JNE		FOWARD1
	PRINTA_OBJETO	ALIEN, 15, CX, DX, 11, 88

FOWARD1:
	CMP		BX,21
	JNE		FOWARD2
	PRINTA_OBJETO	SCORE, 15,CX,DX, 26, 156

FOWARD2:
	CMP		BX, 33
	JNE		FOWARD3
	PRINTA_OBJETO	CORACAO3, 39, CX, DX, 29, 203

FOWARD3:
	CMP		BX, 1
	JNE		FOWARD6
	PRINTA_OBJETO	LULA, 15, CX, DX, 8, 64

FOWARD6:
	CMP		BX, 3
	JNE		FOWARD7
	PRINTA_OBJETO	GORDO, 15, CX, DX, 12, 96

FOWARD7:
	CMP		BX, 32
	JNE		FOWARD8
	PRINTA_OBJETO	CORACA02, 39, CX, DX, 19, 133

FOWARD8:
	CMP		BX, 31
	JNE		FOWARD9
	PRINTA_OBJETO	CORACAO1, 39, CX, DX, 9, 63

FOWARD9:
	CMP		BX, 99
	JNE		FOWARD10
	PRINTA_OBJETO	PLAYER, 10, CX, DX, 9, 72

FOWARD10:
	CMP		BX, 98
	JNE		FOWARD11
	PRINTA_OBJETO	BARREIRA, 43, CX, DX, 20, 140

FOWARD11:
	CMP		BX, 97
	JNE		FOWARD12
	PRINTA_OBJETO	BARREIRA_D, 43, CX, DX, 20, 140

FOWARD12:
	CMP		BX, 100
	JNE		FOWARD13
	PRINTA_OBJETO	PLAYER, 0h, CX, DX, 9, 72

FOWARD13:
	CMP		BX,77
	JNE		FOWARD14
	PRINTA_OBJETO	TIRO, 40, CX,DX, 9, 36

FOWARD14:
	CMP		BX,78
	JNE		FOWARD15
	PRINTA_OBJETO	TIRO,	0, CX,DX, 9, 36

FOWARD15:

	INC		SI
	ADD		X,10
	CMP		X,320
	JNB		FOWARD4
	CALL	PRINTA_MATRIZ_AUX

FOWARD4:
	MOV		X,0
	ADD		Y,10
	CMP		Y,200
	JNB		FOWARD5
	CALL	PRINTA_MATRIZ_AUX

FOWARD5:

	RET
PRINTA_MATRIZ_AUX	ENDP

;_________________________ Printa tudo _________________________________________________________________________________________________
PRINTA_TUDO_2	PROC
	CALL	PRINTA_MATRIZ_2

PRINTA_TUDO_2	ENDP

PRINTA_MATRIZ_2	PROC
	PUSH	CX
	PUSH	DX
	MOV		X,0
	MOV		Y,0
	XOR		SI,SI
	LEA		SI,MATRIZ_LOGICA_BACK

	PUSH	BX
	CALL	PRINTA_MATRIZ_AUX_2
	POP		BX

	POP		CX
	POP		DX

	RET
PRINTA_MATRIZ_2	ENDP
PRINTA_MATRIZ_AUX_2		PROC;MATRIZ PARA PRINTAR O QUE ESTIVER NA MATRIZ LOGICA

	MOV		CX,X
	MOV		DX,Y

	MOV		BX,[SI]
	CMP		BX, 2
	JNE		FOWARD1_2
	PRINTA_OBJETO	ALIEN, 15, CX, DX, 11, 88

FOWARD1_2:
	CMP		BX,21
	JNE		FOWARD2_2
	PRINTA_OBJETO	SCORE, 15,CX,DX, 26, 156

FOWARD2_2:
	CMP		BX, 33
	JNE		FOWARD3_2
	PRINTA_OBJETO	CORACAO3, 39, CX, DX, 29, 203

FOWARD3_2:
	CMP		BX, 1
	JNE		FOWARD6_2
	PRINTA_OBJETO	LULA, 15, CX, DX, 8, 64

FOWARD6_2:
	CMP		BX, 3
	JNE		FOWARD7_2
	PRINTA_OBJETO	GORDO, 15, CX, DX, 12, 96

FOWARD7_2:
	CMP		BX, 32
	JNE		FOWARD8_2
	PRINTA_OBJETO	CORACA02, 39, CX, DX, 19, 133

FOWARD8_2:
	CMP		BX, 31
	JNE		FOWARD9_2
	PRINTA_OBJETO	CORACAO1, 39, CX, DX, 9, 63

FOWARD9_2:
	CMP		BX, 99
	JNE		FOWARD10_2
	PRINTA_OBJETO	PLAYER, 10, CX, DX, 9, 72

FOWARD10_2:
	CMP		BX, 98
	JNE		FOWARD11_2
	PRINTA_OBJETO	BARREIRA, 43, CX, DX, 20, 140

FOWARD11_2:
	CMP		BX, 97
	JNE		FOWARD12_2
	PRINTA_OBJETO	BARREIRA_D, 43, CX, DX, 20, 140

FOWARD12_2:
	CMP		BX, 100
	JNE		FOWARD13_2
	PRINTA_OBJETO	PLAYER, 0h, CX, DX, 9, 72

FOWARD13_2:
	CMP		BX,77
	JNE		FOWARD14_2
	PRINTA_OBJETO	TIRO, 40, CX,DX, 9, 36

FOWARD14_2:
	CMP		BX,78
	JNE		FOWARD15_2
	PRINTA_OBJETO	TIRO,	0, CX,DX, 9, 36

FOWARD15_2:

	INC		SI
	ADD		X,10
	CMP		X,320
	JNB		FOWARD4_2
	CALL	PRINTA_MATRIZ_AUX_2

FOWARD4_2:
	MOV		X,0
	ADD		Y,10
	CMP		Y,200
	JNB		FOWARD5_2
	CALL	PRINTA_MATRIZ_AUX_2

FOWARD5_2:

	RET
PRINTA_MATRIZ_AUX_2	ENDP

;_________________________ Score _________________________________________________________________________________________________
SCORE_SOMA	PROC

	CMP 	DX,1
	JE		ALIEN_1
	CMP 	DX,2
	JE 		ALIEN_2
	CMP 	DX,3
	JE		ALIEN_3

ALIEN_1:	ADD 	SCORE_SOMADOR,5d
	RET

ALIEN_2:	ADD 	SCORE_SOMADOR,2d
	RET

ALIEN_3:	ADD 	SCORE_SOMADOR,1d
	RET
SCORE_SOMA	ENDP

END	MAIN