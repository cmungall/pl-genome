

'prolog/faldo.pl' <-- [],
  'blip -i ontologies/faldo.ttl ontol-schema -local faldo -ns http://biohackathon.org/faldo# > $@'.

'prolog/so.pl' <-- [],
  'blip -i ontologies/so.ttl -consult util/make_so_schema.pl -goal "write_module,halt" > $@'.

%'prolog/so.pl' <-- [],
%  'blip -i ontologies/so.ttl ontol-schema -labels -local so -ns http://purl.obolibrary.org/obo/ > $@'.

'ontologies/so.ttl' <-- [],
  'owltools http://purl.obolibrary.org/obo/so.owl --extract-mingraph -o -f ttl file://`pwd`/$@'.

'examples/data/y.owl.gz' <-- [],
  'wget --no-check-certificate https://gff3-to-owl.googlecode.com/files/y.owl.gz -O $@'.
'examples/data/y.owl' <-- 'examples/data/y.owl.gz',
  'gzip -d $<'.
'examples/data/y.ttl' <-- 'examples/data/y.owl',
  'owltools $< --remove-tbox -o -f ttl file://`pwd`/$@'.
%  'wget --no-check-certificate https://gff3-to-owl.googlecode.com/files/yeast.owl  -O $@'.

