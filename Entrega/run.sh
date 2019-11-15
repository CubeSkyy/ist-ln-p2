#!/bin/bash

mkdir -p FINALtransducers
mkdir -p FINALpdf
mkdir -p FINALexamples

################### TRANSDUCERS a)################
#
#a1
fstcompile --isymbols=syms.txt --osymbols=syms.txt  lemma2noun.txt | fstarcsort > FINALtransducers/lemma2noun.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait FINALtransducers/lemma2noun.fst | dot -Tpdf  > FINALpdf/lemma2noun.pdf

#a2
fstcompile --isymbols=syms.txt --osymbols=syms.txt  lemma2adverb.txt | fstarcsort > FINALtransducers/lemma2adverb.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait FINALtransducers/lemma2adverb.fst | dot -Tpdf  > FINALpdf/lemma2adverb.pdf

#a3
fstcompile --isymbols=syms.txt --osymbols=syms.txt  lemma2verbip.txt | fstarcsort > FINALtransducers/lemma2verbip.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait FINALtransducers/lemma2verbip.fst | dot -Tpdf  > FINALpdf/lemma2verbip.pdf

#a4
fstcompile --isymbols=syms.txt --osymbols=syms.txt  lemma2verbis.txt | fstarcsort > FINALtransducers/lemma2verbis.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait FINALtransducers/lemma2verbis.fst | dot -Tpdf  > FINALpdf/lemma2verbis.pdf

#a5
fstcompile --isymbols=syms.txt --osymbols=syms.txt  lemma2verbif.txt | fstarcsort > FINALtransducers/lemma2verbif.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait FINALtransducers/lemma2verbif.fst | dot -Tpdf  > FINALpdf/lemma2verbif.pdf

#b6
fstunion FINALtransducers/lemma2verbip.fst FINALtransducers/lemma2verbis.fst > lemma2verb1.fst
fstunion lemma2verb1.fst FINALtransducers/lemma2verbif.fst > FINALtransducers/lemma2verb.fst
rm -f lemma2verb1.fst

fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait FINALtransducers/lemma2verb.fst | dot -Tpdf  > FINALpdf/lemma2verb.pdf

#b7
fstunion FINALtransducers/lemma2noun.fst FINALtransducers/lemma2adverb.fst > lemma2word1.fst
fstunion lemma2word1.fst FINALtransducers/lemma2verb.fst > FINALtransducers/lemma2word.fst
rm -f lemma2word1.fst

fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait FINALtransducers/lemma2word.fst | dot -Tpdf  > FINALpdf/lemma2word.pdf

#c8
fstinvert FINALtransducers/lemma2word.fst > FINALtransducers/word2lemma.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait FINALtransducers/word2lemma.fst | dot -Tpdf  > FINALpdf/word2lemma.pdf


################### Testes ################
#
#
##Test 1
# deitar+V+if+3p
fstcompile --isymbols=syms.txt --osymbols=syms.txt  test1.txt | fstarcsort > test1.fst
fstcompose test1.fst FINALtransducers/lemma2verb.fst > test1_lemma2verb.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait test1_lemma2verb.fst | dot -Tpdf  > FINALexamples/test1_lemma2verb.pdf

##Test 2
# pato+N+fp
fstcompile --isymbols=syms.txt --osymbols=syms.txt  test2.txt | fstarcsort > test2.fst
fstcompose test2.fst FINALtransducers/lemma2word.fst > test2_lemma2word.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait test2_lemma2word.fst | dot -Tpdf  > FINALexamples/test2_lemma2word.pdf

##Test 3
# trabalho
fstcompile --isymbols=syms.txt --osymbols=syms.txt  test3.txt | fstarcsort > test3.fst
fstcompose test3.fst FINALtransducers/word2lemma.fst > test3_word2lemma.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait test3_word2lemma.fst | dot -Tpdf  > FINALexamples/test3_word2lemma.pdf
