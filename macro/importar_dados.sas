/*
*
* Programa: importar_dados
* Autor: Alexandra
* Data: 26/06/2025
* Módulo: Macros
* Versão: 1.00
* 
*/

%macro importar_dados (tabela,planilha);
proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx 
	out=Sicoob.&tabela replace;
	sheet=&planilha;
run;
%mend importar_dados;