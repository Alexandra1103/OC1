/*
*
* Programa: vendas_produto
* Autor: Alexandra
* Data: 25/06/2025
* Módulo: Preparação de Dados
* Versão: 1.00
* 
*/

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

proc sort data=sicoob.vendas out=work.vendas_produto;
	by CodProduto;
run;

proc sort data=sicoob.produtos out=work.produtos_produto;
	by CodProduto;
run;

data sicoob.vendasProduto; 
merge work.vendas_produto work.produtos_produto;
	by CodProduto;
run;
