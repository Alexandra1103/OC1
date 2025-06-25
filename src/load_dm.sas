/*
*
* Programa: load_dm.sas
* Autor: Alexandra
* Data: 25/06/2025
* Módulo: Carga de Dados
* Versão: 1.00
* 
*/

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars";

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx 
	out=Sicoob.vendas replace;
	sheet=vendas;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx 
	out=Sicoob.produtos replace;
	sheet=produtos;
run;
