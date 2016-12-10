:- module(interval_relations,
          [
           ]).

:- use_module(faldo_util).
:- use_module(semweb(rdf_db)).
:- use_module(semweb(rdfs)).

%% upstream_of(PI,PS,PR,QI,QS,QR,Mod).

upstream_of(PI,+,R,QI,+,R,same) :- PI < QI.
upstream_of(PI,-,R,QI,-,R,same) :- PI > QI.
upstream_of(PI,+,R,QI,-,R,opposite) :- PI < QI.


upstream_of(P,Q) :-
        upstream_of(P,Q,_).
upstream_of(P,Q,same) :-
        position_as_int(P,PI),
        position_as_int(Q,QI),
        position_strand(P,S),
        position_strand(Q,S),
        reference(P,R),
        reference(Q,R),
        (   S=(+)
        ->  PI < QI
        ;   PI > QI).

upstream_of(P,Q,Mod) :-
        position_as_int(P,PI),
        position_as_int(Q,QI),
        position_strand(P,PS),
        position_strand(Q,QS),
        upstream_of(PI,PS,PR,QI,QS,QR,Mod).
