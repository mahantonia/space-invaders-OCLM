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
MSG 	DB	0AH,0AH,0AH,0AH,0AH,0AH,0AH,0AH,0AH,0DH,'     ','Bem vindo ao Space Invaders$',0AH,0DH

MSG1	DB	0AH,0DH,'  ','Pressione Espaco para comecar o jogo',0AH,0DH,'$'

MSG2	DB	'        $'

BLOCO_2020	DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
		DB 	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

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

ET	DB	0,0,0,0,0,0,1,1,1,1,1,0,1,1,1,1,1,0
	DB	0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1
	DB	0,0,0,0,0,1,1,0,0,1,1,1,1,1,0,0,1,1
	DB	0,0,0,0,0,1,1,0,0,1,1,1,1,1,0,0,1,1
	DB	0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1
	DB	0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0
	DB	0,0,0,0,0,0,0,0,1,1,0,0,0,1,1,0,0,0
	DB	0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0
	DB	1,1,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0
	DB	0,0,1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0
	DB	0,0,1,1,0,0,1,1,0,0,0,1,1,0,0,1,1,0
	DB	0,0,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1
	DB	0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0
	DB	0,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,0,0
	DB	0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0
	;PRINTA_OBJETO	ET, 06, X, Y, 18, 270



ALIEN	DB	0,0,1,0,0,0,0,0,1,0,0
	DB	0,0,0,1,0,0,0,1,0,0,0
	DB	0,0,1,1,1,1,1,1,1,0,0
	DB	0,1,1,0,1,1,1,0,1,1,0
	DB	1,1,1,1,1,1,1,1,1,1,1
	DB	1,0,1,1,1,1,1,1,1,0,1
	DB	1,0,1,0,0,0,0,0,1,0,1
	DB	0,0,0,1,1,0,1,1,0,0,0
	;PRINTA_OBJETO	ALIEN, 15, X , Y, 11, 88


MADIMBU	DB	0,0,0,0,0,0,0,1,0,0,0,0,0
	DB	0,0,0,0,0,0,1,0,0,0,0,0,0
	DB	0,0,0,1,1,1,1,1,1,1,0,0,0
	DB	0,0,1,1,1,1,1,1,1,1,1,0,0
	DB	0,1,1,1,1,1,1,1,1,1,1,1,0
	DB	0,1,1,0,0,1,1,1,0,0,1,1,0
	DB	0,1,1,0,0,1,1,1,0,0,1,1,0
	DB	0,1,1,1,1,1,1,1,1,1,1,1,0
	DB	1,1,1,1,1,1,1,1,1,1,1,1,1
	DB	1,1,1,1,0,0,0,0,0,1,1,1,1
	DB	1,1,1,1,0,0,0,0,0,1,1,1,1
	DB	1,1,1,1,1,1,1,1,1,1,1,1,1
	DB	0,1,1,1,1,1,0,1,1,1,1,1,0
	;PRINTA_OBJETO	MADIMBU, 63, X, Y, 13, 169
BARREIRA	DB	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	DB	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
	DB	1,0,1,1,1,1,1,1,1,0,1,1,0,0,1,1,1,1,0,1
	DB	1,0,0,1,0,1,0,1,1,0,1,1,1,1,1,1,0,1,0,1
	DB	1,0,0,1,0,1,1,0,1,0,1,1,0,0,1,1,1,1,0,1
	DB	1,0,0,1,0,1,0,1,1,0,1,1,0,0,1,1,0,0,0,1
	DB	1,0,0,1,0,1,0,1,1,1,1,1,0,0,1,1,0,0,0,1
	DB	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
	DB	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

BARREIRA_D DB	1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0
	DB	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	DB	0,0,0,0,0,0,0,1,1,0,1,0,0,0,0,0,0,0,0,0
	DB	1,0,0,1,0,1,0,1,1,0,0,0,0,0,1,0,0,0,0,0
	DB	1,0,0,1,0,1,1,0,1,0,1,1,0,0,1,1,1,1,0,1
	DB	1,0,0,1,0,1,0,1,1,0,1,1,0,0,1,1,0,0,0,1
	DB	1,0,0,1,0,1,0,1,1,1,1,1,0,0,1,1,0,0,0,1
	DB	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
	DB	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

PLAYER	DB	0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0
	DB	0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0
	DB	0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0
	DB	0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0
	DB	0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
	DB	1,1,1,1,1,0,0,1,1,1,1,1,1,0,0,1,1,1,1,1
	DB	1,1,0,0,0,0,1,1,1,1,0,1,1,1,0,0,0,0,1,1
	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

STATUS_BARREIRA	DB	21,0,0,0,0,0,0,0,0,0,0,0,33,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,98,0,0,98,0,0,98,0,0,98,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0


ALIENS_MOVIMENTO	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	1,0,1,0,1,0,1,0,1,0,1,0,0,0,0,0
		DB	2,0,2,0,2,0,2,0,2,0,2,0,0,0,0,0
		DB	3,0,3,0,3,0,3,0,3,0,3,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

PLAYER_MOVIMENTO	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	99,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

LIMPA_TELA	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51
		DB	51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51,51

VEL_X	DW	0
VEL_Y	DW	0
IX	DW	0
IY	DW	0
X	DW	0
Y	DW	0
;inicio de variaveis utilizadas pelo PRINTA_OBJETO; NAO MUDAR;;;;;;;;;;;;;;;;;;;
LARGURA_M	DW	0
TOTAL_M	DW	0
X_INICIO	DW	0
Y_INICIO	DW	0
LADO_X	DW	0
LADO_Y	DW	0
COUNT	DW	0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SCORE_SOMADOR	DB	0

.CODE

MAIN	PROC; inicio do programa ---------------------------------------------------
	CALL	SET_DISPLAY_MODE ;INICIALIZA MODO GRAFICO
	MOV 	AX,@DATA	;INICIALIZA DATA
	MOV 	DS,AX
;;;;;;;;;;;;;;;;;;INCIO MENU ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
	CMP 	AL, ' ';compara o digitado com espaco
	JNE 	INICIOMENU
	CALL	SET_DISPLAY_MODE
	CALL	INICIO_GAME; comecao o jogo
;;;;;;;;;;;;;;;;;;;FIM MENU;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FIM_MAIN:	CALL	FIM

MAIN	ENDP;fim do programa---------------------------------------------------
INICIO_GAME	PROC
	
	CALL	LIMPA_TUDO
	
	MOV 	AX, 0100h
	INT		16h
	JZ		NAO_SAI

	MOV		AH, 07h
	INT 	21h

	CMP		AL,97
	JNE		NAO_ESQUERDA
	;CALL	MOV_ESQUERDA
	;JMP	NAO_SAI
	
NAO_ESQUERDA:
	CMP	AL,100
	JNE	NAO_DIREITA
	;CALL	MOV_DIREITA
	;JMP	NAO_SAI

NAO_DIREITA:
	CMP 	AL, 27
	JNE		NAO_SAI
	RET

NAO_SAI:
	CALL	PRINTA_TUDO

	CALL	INICIO_GAME

INICIO_GAME	ENDP; FIM DO JOGO + LOOP ATE AL = 27

LIMPA_TUDO	PROC
	PUSH	CX
	PUSH	DX
	MOV		X,0
	MOV		Y,0
	XOR		SI,SI
	LEA		SI,LIMPA_TELA

	CALL	PRINTA_MATRIZ_AUX

	POP	CX
	POP	DX

	RET
LIMPA_TUDO	ENDP

FIM		PROC

;RENICIALIZA O GRAPHIC DO DOS________________________________
	MOV	AH,0	;SET MODEL
	MOV	AL,3H	;MODE 0bh, 320X200 many COLOR
	INT	10H
	MOV	AH,0BH
	MOV	BH,1
	MOV	BL,1
	INT	10H
;______________________________________________________________

	MOV	AH, 4CH
	INT 	21H
FIM		ENDP



DISPLAY_OBJ		PROC ; funcao auxiliar para printar qualquer objeto------
	MOV	LADO_X,0
	MOV	LADO_Y,0
	MOV	COUNT,0

INICIO:
	MOV	CX, X_INICIO
	ADD	CX, LADO_X
	INC	LADO_X
	MOV	DX, Y_INICIO
	ADD	DX, LADO_Y

	MOV	BL, [SI]

	CMP	BL, 0
	JE	PRINT0

	MOV	AH, 0CH
	INT	10H

PRINT0:	INC	SI
	INC	COUNT

	MOV	BX, LARGURA_M
	CMP	LADO_X, BX
	JL	CONTINUA

	MOV	LADO_X, 0
	INC	LADO_Y

CONTINUA:	MOV	BX, TOTAL_M
	CMP	COUNT, BX
	JL	INICIO

	RET

DISPLAY_OBJ	ENDP;-------------------------------------------------------

SET_DISPLAY_MODE		PROC;funcao para mudar a o modo de video do dos box
	MOV	AH,0	;SET MODEL
	MOV	AL,13H	;MODE 0bh, 320X200 many COLOR
	INT	10H
	MOV	AH,0BH
	MOV	BH,1
	MOV	BL,1

	INT	10H

	RET
SET_DISPLAY_MODE	ENDP;-------------------------------------------------------

PRINTA_TUDO	PROC
	CALL	PRINTA_MATRIZ
	CALL	PRINTA_STATUS
	CALL	PRINTA_PLAYER

PRINTA_TUDO	ENDP

PRINTA_PLAYER	PROC
	PUSH	CX
	PUSH	DX
	MOV	X,0
	MOV	Y,0
	XOR	SI,SI
	LEA	SI,PLAYER_MOVIMENTO

	CALL	PRINTA_MATRIZ_AUX

	POP	CX
	POP	DX

	RET
PRINTA_PLAYER	ENDP

PRINTA_STATUS	PROC
	PUSH	CX
	PUSH	DX
	MOV	X,0
	MOV	Y,0
	XOR	SI,SI
	LEA	SI,STATUS_BARREIRA

	CALL	PRINTA_MATRIZ_AUX
	

	POP	CX
	POP	DX

	RET
PRINTA_STATUS	ENDP

PRINTA_MATRIZ	PROC
	PUSH	CX
	PUSH	DX
	MOV	X,0
	MOV	Y,0
	XOR	SI,SI
	LEA	SI,ALIENS_MOVIMENTO

	CALL	PRINTA_MATRIZ_AUX

	POP	CX
	POP	DX

	RET
PRINTA_MATRIZ	ENDP

PRINTA_MATRIZ_AUX		PROC;MATRIZ PARA PRINTAR O QUE ESTIVER NA MATRIZ LOGICA

	MOV	CX,X
	MOV	DX,Y
	CMP	[SI], 1
	JNE	FOWARD1
	PRINTA_OBJETO	ALIEN, 15, CX, DX, 11, 88
FOWARD1:
	CMP	[SI],21
	JNE	FOWARD2
	PRINTA_OBJETO	SCORE, 15,CX,DX, 26, 156
	
FOWARD2:
	CMP	[SI], 33
	JNE	FOWARD3
	PRINTA_OBJETO	CORACAO3, 39, CX, DX, 29, 203
FOWARD3:
	CMP	[SI], 2
	JNE	FOWARD6
	PRINTA_OBJETO	MADIMBU, 63, CX, DX, 13, 169
FOWARD6:
	CMP	[SI], 3
	JNE	FOWARD7
	PRINTA_OBJETO	ET, 06, CX, DX, 18, 270
FOWARD7:
	CMP	[SI], 32
	JNE	FOWARD8
	PRINTA_OBJETO	CORACA02, 39, CX, DX, 19, 133
FOWARD8:
	CMP	[SI], 31
	JNE	FOWARD9
	PRINTA_OBJETO	CORACAO1, 39, CX, DX, 9, 63
FOWARD9:
	CMP	[SI], 99
	JNE	FOWARD10
	PRINTA_OBJETO	PLAYER, 55, CX, DX, 20, 140
FOWARD10:
	CMP	[SI], 98
	JNE	FOWARD11
	PRINTA_OBJETO	BARREIRA, 43, CX, DX, 20, 140
FOWARD11:
	CMP	[SI], 97
	JNE	FOWARD12
	PRINTA_OBJETO	BARREIRA_D, 43, CX, DX, 20, 140
FOWARD12:
	CMP	[SI], 51
	JNE	FOWARD13
	PRINTA_OBJETO	BLOCO_2020, 0, CX, DX, 20, 400
FOWARD13:

	INC	SI
	ADD	X,20
	CMP	X,320
	JNB	FOWARD4
	CALL	PRINTA_MATRIZ_AUX
FOWARD4:
	MOV	X,0
	ADD	Y,20
	CMP	Y,200
	JNB	FOWARD5
	CALL	PRINTA_MATRIZ_AUX
FOWARD5:


	RET
PRINTA_MATRIZ_AUX	ENDP

SCORE_SOMA	PROC
	
	PUSH	DX
	
	LEA 	DX,MSG2
	MOV 	AH,9
	INT		21h
	
	POP		DX
	
	CMP 	DX,1
	JE		ALIEN_1
	CMP 	DX,2
	JE 		ALIEN_2
	CMP 	DX,3
	JE		ALIEN_3
	
ALIEN_1:	ADD 	SCORE_SOMADOR,5d

ALIEN_2:	ADD 	SCORE_SOMADOR,2d

ALIEN_3:	ADD 	SCORE_SOMADOR,1d

SCORE_SOMA	ENDP 

END	MAIN
