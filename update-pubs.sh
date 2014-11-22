bib2template=$HOME/dev/bibworld/bib2template.py
bib=$HOME/publications/paper.bib
template=$HOME/dev/bibworld/example-template-jinja2/erikslist-without-header.html
bib2templateargs="--engine jinja2 --staticroot bibworldfiles/ -r http://hera.inf-cv.uni-jena.de:6680 -p $HOME/publications-pdfs/"

python $bib2template -b $bib -t $template -o _includes/allpub.html --query all-query.json $bib2templateargs
python $bib2template -b $bib -t $template -o _includes/selectedpub.html --query selectedpub-query.json $bib2templateargs
python $bib2template -b $bib -t $template -o _includes/lifelongpub.html --query lifelong-query.json $bib2templateargs
python $bib2template -b $bib -t $template -o _includes/domainadaptationpub.html --query domainadaptation-query.json $bib2templateargs
python $bib2template -b $bib -t $template -o _includes/deeplearningpub.html --query deeplearning-query.json $bib2templateargs
python $bib2template -b $bib -t $template -o _includes/sunpub.html --query sun-query.json $bib2templateargs
python $bib2template -b $bib -t $template -o _includes/biomedpub.html --query biomed-query.json $bib2templateargs
python $bib2template -b $bib -t $template -o _includes/finegrainedpub.html --query finegrained-query.json $bib2templateargs

