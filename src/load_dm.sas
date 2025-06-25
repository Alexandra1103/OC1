/*
*
* Programa: load_dm.sas
* Autor: Alexandra
* Data: 25/06/2025
* Módulo: Carga de Dados
* Versão: 1.00
* 
*/

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx 
	out=Sicoob.vendas replace;
	sheet=vendas;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx 
	out=Sicoob.produtos replace;
	sheet=produtos;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx 
	out=Sicoob.deptos replace;
	sheet=deptos;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx 
	out=Sicoob.grupos replace;
	sheet=grupos;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx 
	out=Sicoob.cores replace;
	sheet=cores;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx 
	out=Sicoob.tamanhos replace;
	sheet=tamanhos;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx 
	out=Sicoob.estados replace;
	sheet=estados;
run;

proc import datafile="&caminho/output/DM1.xlsx" dbms=xlsx 
	out=Sicoob.regioes replace;
	sheet="regiões";
run;

%include "&caminho/scr/clear_libs.sas";
