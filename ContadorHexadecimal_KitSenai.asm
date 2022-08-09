;*********************************** Programa ************************************
;*******                       ContadorHexadecimal.ASM                 ***********
;***********************************************************************************
;*********************  Definições do processador ********************************
#include p16F877a.inc
__config _HS_OSC & _WDT_OFF & _LVP_OFF & _PWRTE_ON

;*************************** Declaração de variáveis ******************************   
DELAY EQU 0x20					
VEZES EQU 0x21

;***************************** Memória de programa ********************************
	ORG     0 			;Posiciona o ponteiro para o endereço 0x0 de memória
RESET 					;Bloco de RESET do microcontrolador
	NOP             
	GOTO   SETUP 		;Pula para o marcador SETUP
;***************************** Interrupção ****************************************
	ORG 	4			;Endereço do vetor de interrupção
;*************************** Inicio do programa ***********************************

;*************************** Configurações ****************************************
SETUP					;Bloco de configuração do microcontrolador
	BSF 	STATUS,RP0	;Aciona o Bank1 de memória
 	MOVLW	0x00		;Carrega 0x00 no registrador W
    MOVWF	TRISE		;Configura PORTE como saída

	MOVLW	0x00		;Carrega 0x00 no registrador W
	MOVWF	TRISD		;Configura o PORTD como saída   
   
 	BCF 	STATUS,RP0	;Retorna para o Bank0 de memória
	BSF		TRISE,0		;Habilita a tensão no display 1 de 7 segmentos na 
						;Porta E RE0

;*************************** Programa principal **********************************
LOOP 					;Bloco do principal do programa

	MOVLW	B'0111111'	;Carrega '0111111' no registrador W, esta seguência 
						;binaria forma o numero 0 no display de 7 segmentos
	MOVWF	PORTD		;Envia o conteudo de W para o registrador PORTD, colocando
						;em nível alto (5V) e nível baixo todos os pinos do 
						;PORTD (RD7 -> RD0)
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED	;Chama procedimento DESLIGA_LED para desligar todos os LEDs
						;da PORTD

	MOVLW	B'0000110'	;Carrega '0000110' no registrador W, esta seguência 
						;binaria forma o numero 1 no display de 7 segmentos
	MOVWF	PORTD		
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'1011011'	;Carrega '1011011' no registrador W, esta seguência 
						;binaria forma o numero 2 no display de 7 segmentos
	MOVWF	PORTD		
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'1001111'	;Carrega '1001111' no registrador W, esta seguência binaria
						;binaria forma o numero 3 no display de 7 segmentos
	MOVWF	PORTD
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'1100110'	;Carrega '1100110' no registrador W, esta seguência 
						;binaria forma o numero 4 no display de 7 segmentos
	MOVWF	PORTD
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'1101101'	;Carrega '1101101' no registrador W, esta seguência 
						;binaria forma o numero 5 no display de 7 segmentos
	MOVWF	PORTD
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'1111101'	;Carrega '1111101' no registrador W, esta seguência 
						;binaria forma o numero 6 no display de 7 segmentos
	MOVWF	PORTD
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'0000111'	;Carrega '0000111' no registrador W, esta seguência 
						;binaria forma o numero 7 no display de 7 segmentos
	MOVWF	PORTD
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'1111111'	;Carrega '1111111' no registrador W, esta seguência 
						;binaria forma o numero 8 no display de 7 segmentos
	MOVWF	PORTD
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'1101111'	;Carrega '1001111' no registrador W, esta seguência 
						;binaria forma o numero 9 no display de 7 segmentos
	MOVWF	PORTD
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'1110111'	;Carrega '1110111' no registrador W, esta seguência 
						;binaria forma o letra A no display de 7 segmentos
	MOVWF	PORTD
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'1111100'	;Carrega '1111100' no registrador W, esta seguência 
						;binaria forma o letra b no display de 7 segmentos
	MOVWF	PORTD
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'0111001'	;Carrega '0111001' no registrador W, esta seguência 
						;binaria forma o letra C no display de 7 segmentos
	MOVWF	PORTD
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'1011110'	;Carrega '1011110' no registrador W, esta seguência 
						;binaria forma o letra d no display de 7 segmentos
	MOVWF	PORTD
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'1111001'	;Carrega '1111001' no registrador W, esta seguência 
						;binaria forma o letra E no display de 7 segmentos
	MOVWF	PORTD
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	MOVLW	B'1110001'	;Carrega '1110111' no registrador W, esta seguência 
						;binaria forma o letra F no display de 7 segmentos
	MOVWF	PORTD
	CALL 	PERDE_TEMPO	
	CALL	DESLIGA_LED

	GOTO 	LOOP		;Manda o programa pular para o inicio do bloco LOOP
						;mantendo o programa em execução eterna

DESLIGA_LED	 			;Procedimento para desligar todos os LEDs
	MOVLW	0x00		;Carrega '00000000' ou 0x00 no registrador W
	MOVWF 	PORTD		;Envia o conteudo de W para o registrador PORTD, colocando
						;em nivel baixo (0V) todos os pinos do PORTD (RD7 -> RD0)
	CALL 	PERDE_TEMPO	;Chama procedimento PERDE_TEMPO para criar um atraso (delay
						;na sequencia de LEDs

PERDE_TEMPO				;Procedimento que força o PIC a perder tempo(delay)
	MOVLW 	d'80' 		;Para funcionar no simulador kit SENAI é só mudar o d'80'
						;por d'1', para grava no PIC manter d'80'
 	MOVWF 	VEZES
 	
LOOP_VEZES				;Procedimento que repete os estados led ligado e desligado
 	MOVLW 	d'255' 		;Para funcionar no simulador kit SENAI é só mudar o d'255'
						;por d'1', para grava no PIC manter d'255'
	MOVWF 	DELAY 
	CALL 	DELAY_US		 
	DECFSZ 	VEZES,1 
	GOTO 	LOOP_VEZES 
	RETURN
 
DELAY_US 
	NOP
	NOP 
	DECFSZ DELAY,1 
	GOTO DELAY_US 
	RETURN 

	END					;Marcador de última linha do programa
