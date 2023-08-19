%fatos
sigla(ac,acre).
sigla(al,alagoas).
sigla(ap,amapa).
sigla(am,amazonas).
sigla(ba,bahia).
sigla(ce,ceara).
sigla(df,"distrito federal").
sigla(es,"espirito santo").
sigla(go,goias).
sigla(ma,maranhao).
sigla(mt,"mato grosso").
sigla(ms,"mato grosso do sul").
sigla(mg,"minas gerais").
sigla(pa,para).
sigla(pb,paraiba).
sigla(pr,parana).
sigla(pe,pernambuco).
sigla(pi,piaui).
sigla(rj,"rio de janeiro").
sigla(rn,"rio grande do norte").
sigla(rs,"rio grande do sul").
sigla(ro,rondonia).
sigla(rr,roraima).
sigla(sc,"santa catarina").
sigla(sp,"sao paulo").
sigla(se,sergipe).
sigla(to,tocantins).

regiao(ac,norte).
regiao(al,nordeste).
regiao(ap,norte).
regiao(am,norte).
regiao(ba,nordeste).
regiao(ce,nordeste).
regiao(df,centro-oeste).
regiao(es,sudeste).
regiao(go,centro-oeste).
regiao(ma,nordeste).
regiao(mt,centro-oeste).
regiao(ms,centro-oeste).
regiao(mg,sudeste).
regiao(pa,norte).
regiao(pb,nordeste).
regiao(pr,sul).
regiao(pe,nordeste).
regiao(pi,nordeste).
regiao(rj,sudeste).
regiao(rn,nordeste).
regiao(rs,sul).
regiao(ro,norte).
regiao(rr,norte).
regiao(sc,sul).
regiao(sp,sudeste).
regiao(se,nordeste).
regiao(to,norte).

capital("rio branco",ac).
capital(maceio,al).
capital(macapa,ap).
capital(manaus,am).
capital(salvador,ba).
capital(fortaleza,ce).
capital(brasilia,df).
capital(vitoria,es).
capital(goiania,go).
capital("sao luis",ma).
capital(cuiaba,mt).
capital("campo grande",ms).
capital("belo horizonte",mg).
capital(belem,pa).
capital("joao pessoa",pb).
capital(curitiba,pr).
capital(recife,pe).
capital(teresina,pi).
capital("rio de janeiro",rj).
capital(natal,rn).
capital("porto alegre",rs).
capital("porto velho",ro).
capital("boa vista",rr).
capital(florianopolis,sc).
capital("sao paulo",sp).
capital(aracaju,se).
capital(palmas,to).

%regras

% Identifique o Estado a partir da sigla;
% sigla(ba, X).

% Identifique a regiao do Estado;
% regiao(ba, X).

% Identifique a capital do Estado;
% capital(X, ba).

% Identifique os Estados de uma regiao;
% regiao(X, nordeste). 

% Identifique as capitais dos Estados de uma regiao;
capitais_regiao(X, Y) :-  capital(X, Z) , regiao(Z, Y).

% Dada uma regiao, identificar as capitais e os respectivos Estados;
regiao_capitais_estados(X, Z, Y) :- regiao(T, X), capital(Z, T), sigla(T, Y), nl.

% Dada uma regiao, identificar os Estados e as respectivas as capitais;
regiao_estados_capitais(X, Y, Z) :- regiao(T, X), sigla(T, Y), capital(Z, T), nl.

