## Projetos com o microcontrolador PIC16F877a

## Diagrama

A pasta diagrama terá o esquema elétrico para a montagem do circuito

## Software

O software usado para gerar o arquivo .hex foi:
 - MPLAB IDE v7.0
 
Se fizer algumas adaptações pode ser o usado:
 - MPLAB X IDE
 
Ou pode usar outro software de sua preferência, esses são gratuitos.


Para simular os circuitos pode ser usado o software de sua preferência. 
Eu uso o SimulIDE ou o simulador KIT SENAI. 

Segue o link do simulador Kit SENAI e GitHub do autor:
```
https://oprofessorleandro.wordpress.com/2016/08/18/simulador-pic16-com-interface-grafica/
https://github.com/LePoloni/Simulador-KIT-SENAI-PIC16
```

## Microprograma

Os microprogramas serão desenvolvidos em Assembly e C, futuramente irei postar alguns em MicroPython
 - Sobre eles:
   - Contador Hexadecimal. O contador exibe em um display de 7 segmentos a contagem em ordem crescente de 0 à F. 
     Ele foi simulado seguindo o esquema elétrico do Kit SENAI.
   - Pisca LED. Pisca um LED, eu fiz para testar o simulador SimulIDE. O Microprograma foi desenvolvido no 
     MPLAB X IDE. O diagrama está na pasta Diagrama.
       
