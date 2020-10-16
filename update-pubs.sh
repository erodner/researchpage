bib2template=$HOME/dev/bibworld/bib2template.py
bib=$HOME/publications/paper.bib
template=$HOME/dev/bibworld/example-template-jinja2/erikslist-without-header.html
bib2templateargs="--engine jinja2 --staticroot bibworldfiles/ -r http://141.45.92.125:5000 -p $HOME/publications-pdfs/"
python=python2.7

$python $bib2template -b $bib -t $template -o _includes/allpub.html --query all-query.json $bib2templateargs
$python $bib2template -b $bib -t $template -o _includes/selectedpub.html --query selectedpub-query.json $bib2templateargs

