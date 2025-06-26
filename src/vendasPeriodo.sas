/*
*
* Programa: vendas_periodo
* Autor: Alexandra
* Data: 25/06/2025
* Módulo: Preparação de Dados
* Versão: 1.00
* 
*/

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

proc sql;
create table sicoobsp.VendasPeriodo as 
	select a.codproduto, b.descricao, b.codgrupo,
	b.coddepto, a.codcor, a.codtamanho, a.codestado,
	a.datavenda, a.qtdevendida, b.precounitario, 
	b.precounitario*a.qtdevendida as totalvenda,
	from sicoob.vendas a
	inner join sicoob.produtos b
	on a.codproduto = b.codproduto;
	quit;