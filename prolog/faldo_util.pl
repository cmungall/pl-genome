:- module(faldo_util,
          [
           feature_interval/8,
           canonical_feature_interval/6,
           feature_length/3,
           feature_ntype/2
           ]).

:- use_module(faldo).
:- use_module(semweb(rdf_db)).
:- use_module(semweb(rdfs)).

:- rdf_register_ns(faldo, 'http://biohackathon.org/resource/faldo#').

%% feature_interval(?Feature, ?Location, ?Begin, ?End, ?StrandBeg, ?StrandEnd, ?ReferenceBeg, ?ReferenceEnd)
%
% A pair of (Position,Strand,Reference) tuples corresponding to a Location of a feature
%
% Strand and Reference and not guaranteed to be identical for each member of the pair.
% When they are, this is the same as a canonical_feature_interval/6
feature_interval(F,L,B,E,StrB,StrE,RefB,RefE) :-
        location(F,L),
        begin(L,Bx),
        position_as_int(Bx,B),
        end(L,Ex),
        position_as_int(Ex,E),
        position_strand(Bx,StrB),
        position_strand(Ex,StrE),
        reference(Bx,RefB),
        reference(Ex,RefE).


%% canonical_feature_interval(?Feature, ?Location, ?Begin, ?End, ?Strand, ?Reference)
%
% A canonical feature interval for feature F is a feature_interval/8 in which the begin
% and end are on the same strand of the same reference.
%
% An example of a non-canonical feature interval is a feature that
% is split across two contigs or a trans-spliced gene
canonical_feature_interval(F,L,B,E,PosType,Ref) :-
        location(F,L),
        begin(L,Bx),
        position_as_int(Bx,B),
        end(L,Ex),
        position_as_int(Ex,E),
        position_strand(Bx,PosType),
        position_strand(Ex,PosType),
        reference(Bx,Ref),
        reference(Ex,Ref).

position_as_int(P,Num) :-
        position(P,A),
        atom_number(A,Num).

position_strand(P,+) :-
        rdf(P,rdf:type,faldo:'ForwardStrandPosition').
position_strand(P,-) :-
        rdf(P,rdf:type,faldo:'NegativeStrandPosition').
position_strand(P,both) :-
        rdf(P,rdf:type,faldo:'BothStrandsPosition').

feature_length(F,Loc,Len) :-
        % lengths are only meaningful for canonical inervals
        canonical_feature_interval(F,Loc,B,E,_,_),
        Len is abs((E-B)+1).         % TODO - check system

feature_type(F,T) :-
        rdf(F,rdf:type,T).  % todo - force to be a feature

% requires SO to be loaded
feature_ntype(F,NT) :-
        rdf(F,rdf:type,T),
        rdf_has(T,rdfs:label,Lit),
        literal_val(Lit,NT).

literal_val(literal(type(_,NT)),NT).
literal_val(literal(lang(_,NT)),NT).








        
        
