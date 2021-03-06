%% <module> faldo
% Autogenerated by rdfs2pl
% Example: swipl....

:-module(faldo,[bagOfRegions/1,both_strands/1,c_TerminalPosition/1,collectionOfRegions/1,exact_position/1,positive_strand/1,fuzzy_position/1,in_between_positions/1,indeterminate_position_within_a_range/1,listOfRegions/1,n_TerminalPosition/1,one_of_positions/1,position/1,region/1,negative_strand/1,stranded_position/1,after/2,before/2,begin/2,beginOf/2,end/2,endOf/2,location/2,position/2,reference/2,op(300,xfy,after),op(300,xfy,before),op(300,xfy,begin),op(300,xfy,beginOf),op(300,xfy,end),op(300,xfy,endOf),op(300,xfy,location),op(300,xfy,position),op(300,xfy,reference)]).
:-use_module(library(semweb/rdf_db)).
:-use_module(library(semweb/rdfs)).

:-op(300,xfy,after).
:-op(300,xfy,before).
:-op(300,xfy,begin).
:-op(300,xfy,beginOf).
:-op(300,xfy,end).
:-op(300,xfy,endOf).
:-op(300,xfy,location).
:-op(300,xfy,position).
:-op(300,xfy,reference).

:-rdf_meta faldo:bagOfRegions(r).
:-rdf_meta faldo:both_strands(r).
:-rdf_meta faldo:c_TerminalPosition(r).
:-rdf_meta faldo:collectionOfRegions(r).
:-rdf_meta faldo:exact_position(r).
:-rdf_meta faldo:fuzzy_position(r).
:-rdf_meta faldo:in_between_positions(r).
:-rdf_meta faldo:indeterminate_position_within_a_range(r).
:-rdf_meta faldo:listOfRegions(r).
:-rdf_meta faldo:n_TerminalPosition(r).
:-rdf_meta faldo:negative_strand(r).
:-rdf_meta faldo:one_of_positions(r).
:-rdf_meta faldo:position(r).
:-rdf_meta faldo:positive_strand(r).
:-rdf_meta faldo:region(r).
:-rdf_meta faldo:stranded_position(r).
:-rdf_meta faldo:after(r,r).
:-rdf_meta faldo:before(r,r).
:-rdf_meta faldo:begin(r,r).
:-rdf_meta faldo:beginOf(r,r).
:-rdf_meta faldo:end(r,r).
:-rdf_meta faldo:endOf(r,r).
:-rdf_meta faldo:location(r,r).
:-rdf_meta faldo:position(r,-).
:-rdf_meta faldo:reference(r,r).
faldo:bagOfRegions(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#BagOfRegions').
faldo:both_strands(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#BothStrandsPosition').
faldo:c_TerminalPosition(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#C-TerminalPosition').
faldo:collectionOfRegions(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#CollectionOfRegions').
faldo:exact_position(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#ExactPosition').
faldo:fuzzy_position(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#FuzzyPosition').
faldo:in_between_positions(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#InBetweenPosition').
faldo:indeterminate_position_within_a_range(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#InRangePosition').
faldo:listOfRegions(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#ListOfRegions').
faldo:n_TerminalPosition(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#N-TerminalPosition').
faldo:negative_strand(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#ReverseStrandPosition').
faldo:one_of_positions(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#OneOfPosition').
faldo:position(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#Position').
faldo:positive_strand(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#ForwardStrandPosition').
faldo:region(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#Region').
faldo:stranded_position(A):-rdfs_individual_of(A,'http://biohackathon.org/resource/faldo#StrandedPosition').
faldo:after(A,B):-rdf_has(A,'http://biohackathon.org/resource/faldo#after',B).
faldo:before(A,B):-rdf_has(A,'http://biohackathon.org/resource/faldo#before',B).
faldo:begin(A,B):-rdf_has(A,'http://biohackathon.org/resource/faldo#begin',B).
faldo:beginOf(A,B):-rdf_has(A,'http://biohackathon.org/resource/faldo#beginOf',B).
faldo:end(A,B):-rdf_has(A,'http://biohackathon.org/resource/faldo#end',B).
faldo:endOf(A,B):-rdf_has(A,'http://biohackathon.org/resource/faldo#endOf',B).
faldo:location(A,B):-rdf_has(A,'http://biohackathon.org/resource/faldo#location',B).
faldo:position(A,B):-rdf_has(A,'http://biohackathon.org/resource/faldo#position',C),rdf_literal_value(C,B).
faldo:reference(A,B):-rdf_has(A,'http://biohackathon.org/resource/faldo#reference',B).
