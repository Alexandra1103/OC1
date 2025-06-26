/*
*
* Programa: trans_vendas_periodo
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
	select a.codproduto, b.descricao,
	c.descricao as grupo,b.codgrupo, 
	d.descricao as depto, e.descricao as cor,
	f.descricao as tamanho,
	b.coddepto, a.codcor, a.codtamanho, a.codestado,
	a.datavenda, a.qtdevendida, g.sigla, 
	g.nome as estado, h.nome as regiao, 
	g.percimposto format=percent6.2,
	b.precounitario*a.qtdevendida*g.percimposto as totalimposto
	b.precounitario, 
	b.precounitario*a.qtdevendida as totalvenda,
	from sicoob.vendas as a
	inner join sicoob.produtos as b
	on a.codproduto = b.codproduto
	inner join sicoob.grupos as c
	on c.codgrupo=b.codgrupo
	inner join sicoob.deptos as d 
	on d.coddepto= b.coddepto
	inner join sicoob.cores as e
	on e.codcor=a.codcor
	inner join sicoob.tamanho as f 
	on f.codtamanho=a.codtamanho 
	inner join sicoob.tamanho as g 
	on g.codtamanho=a.codtamanho
	inner join sicoob.estado as h 
	on h.codestado=a.codestado
	inner join sicoob.regioes as h 
	on h.codregiao=a.codregiao;
	quit;

%include "&caminho/src/clear_libs.sas";