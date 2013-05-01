:- module(faldo_util,
          [
           feature_interval/4
           ]).

:- use_module(faldo).
:-use_module(semweb(rdf_db)).
:-use_module(semweb(rdfs)).


% TODO - ref
feature_interval(F,B,E,PosType) :-
        begin(F,Bx),
        position(Bx,B),
        end(F,Ex),
        position(Ex,E),
        rdf(Bx,rdf:type,PosType).


        
        
