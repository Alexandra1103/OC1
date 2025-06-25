/*
*
* Programa: rel_VendasProduto.sas
* Autor: Alexandra
* Data: 25/06/2025
* M�dulo: Relat�rios
* Vers�o: 1.00
* 
*/

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

data work.vendasProduto; set sicoob.vendasProduto;
TotalVenda  = QtdeVendida*PrecoUnitario;
run;

proc print data=work.vendasproduto;
	var CodProduto Descricao DataVenda QtdeVendida PrecoUnitario;
run;

%include "&caminho/src/clear_libs.sas";
