#!/bin/bash

################### TRANSDUCERS a)################
#
#a1
fstcompile --isymbols=syms.txt --osymbols=syms.txt  lemma2noun.txt | fstarcsort > lemma2noun.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2noun.fst | dot -Tpdf  > lemma2noun.pdf

#a2
fstcompile --isymbols=syms.txt --osymbols=syms.txt  lemma2adverb.txt | fstarcsort > lemma2adverb.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2adverb.fst | dot -Tpdf  > lemma2adverb.pdf

#a3
fstcompile --isymbols=syms.txt --osymbols=syms.txt  lemma2verbip.txt | fstarcsort > lemma2verbip.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2verbip.fst | dot -Tpdf  > lemma2verbip.pdf

#a4
fstcompile --isymbols=syms.txt --osymbols=syms.txt  lemma2verbis.txt | fstarcsort > lemma2verbis.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2verbis.fst | dot -Tpdf  > lemma2verbis.pdf

#a5
fstcompile --isymbols=syms.txt --osymbols=syms.txt  lemma2verbif.txt | fstarcsort > lemma2verbif.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2verbif.fst | dot -Tpdf  > lemma2verbif.pdf


################### Testes ################
#
#
###Test a1)
##Words
#Aluno FS
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a1/alunoFs.txt | fstarcsort > ../test/a1/alunoFs.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a1/alunoFs.fst | dot -Tpdf  > ../test/a1/alunoFs.pdf

##Compose
#Aluno FS
fstcompose ../test/a1/alunoFs.fst lemma2noun.fst > ../test/a1/out/alunoFsA1.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a1/out/alunoFsA1.fst | dot -Tpdf  > ../test/a1/out/alunoFsA1.pdf

###Test a4)
##Words
#Deitar IS 1S
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a4/deitarIs1s.txt | fstarcsort > ../test/a4/deitarIs1s.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/deitarIs1s.fst | dot -Tpdf  > ../test/a4/deitarIs1s.pdf

#Deitar IS 2S
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a4/deitarIs2s.txt | fstarcsort > ../test/a4/deitarIs2s.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/deitarIs2s.fst | dot -Tpdf  > ../test/a4/deitarIs2s.pdf

#Deitar IS 3S
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a4/deitarIs3s.txt | fstarcsort > ../test/a4/deitarIs3s.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/deitarIs3s.fst | dot -Tpdf  > ../test/a4/deitarIs3s.pdf

#Deitar IS 1P
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a4/deitarIs1p.txt | fstarcsort > ../test/a4/deitarIs1p.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/deitarIs1p.fst | dot -Tpdf  > ../test/a4/deitarIs1p.pdf

#Deitar IS 2P
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a4/deitarIs2p.txt | fstarcsort > ../test/a4/deitarIs2p.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/deitarIs2p.fst | dot -Tpdf  > ../test/a4/deitarIs2p.pdf

#Deitar IS 3P
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a4/deitarIs3p.txt | fstarcsort > ../test/a4/deitarIs3p.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/deitarIs3p.fst | dot -Tpdf  > ../test/a4/deitarIs3p.pdf

##Compose
#Deitar IS 1S
fstcompose ../test/a4/deitarIs1s.fst lemma2verbis.fst > ../test/a4/out/deitarIs1sA4.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/out/deitarIs1sA4.fst | dot -Tpdf  > ../test/a4/out/deitarIs1sA4.pdf

#Deitar IS 3S
fstcompose ../test/a4/deitarIs2s.fst lemma2verbis.fst > ../test/a4/out/deitarIs2sA4.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/out/deitarIs2sA4.fst | dot -Tpdf  > ../test/a4/out/deitarIs2sA4.pdf

#Deitar IS 3S
fstcompose ../test/a4/deitarIs3s.fst lemma2verbis.fst > ../test/a4/out/deitarIs3sA4.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/out/deitarIs3sA4.fst | dot -Tpdf  > ../test/a4/out/deitarIs3sA4.pdf

#Deitar IS 1P
fstcompose ../test/a4/deitarIs1p.fst lemma2verbis.fst > ../test/a4/out/deitarIs1pA4.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/out/deitarIs1pA4.fst | dot -Tpdf  > ../test/a4/out/deitarIs1pA4.pdf

#Deitar IS 2P
fstcompose ../test/a4/deitarIs2p.fst lemma2verbis.fst > ../test/a4/out/deitarIs2pA4.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/out/deitarIs2pA4.fst | dot -Tpdf  > ../test/a4/out/deitarIs2pA4.pdf

#Deitar IS 3P
fstcompose ../test/a4/deitarIs3p.fst lemma2verbis.fst > ../test/a4/out/deitarIs3pA4.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/out/deitarIs3pA4.fst | dot -Tpdf  > ../test/a4/out/deitarIs3pA4.pdf


###Test a5)
##Words
#Deitar IF 1S
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a5/deitarIf1s.txt | fstarcsort > ../test/a5/deitarIf1s.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a5/deitarIf1s.fst | dot -Tpdf  > ../test/a5/deitarIf1s.pdf

#Deitar IF 2S
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a5/deitarIf2s.txt | fstarcsort > ../test/a5/deitarIf2s.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a5/deitarIf2s.fst | dot -Tpdf  > ../test/a5/deitarIf2s.pdf

#Deitar IF 3S
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a5/deitarIf3s.txt | fstarcsort > ../test/a5/deitarIf3s.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a5/deitarIf3s.fst | dot -Tpdf  > ../test/a5/deitarIf3s.pdf

#Deitar IF 1P
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a5/deitarIf1p.txt | fstarcsort > ../test/a5/deitarIf1p.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a5/deitarIf1p.fst | dot -Tpdf  > ../test/a5/deitarIf1p.pdf

#Deitar IF 2P
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a5/deitarIf2p.txt | fstarcsort > ../test/a5/deitarIf2p.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a5/deitarIf2p.fst | dot -Tpdf  > ../test/a5/deitarIf2p.pdf

#Deitar IF 3P
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a5/deitarIf3p.txt | fstarcsort > ../test/a5/deitarIf3p.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a5/deitarIf3p.fst | dot -Tpdf  > ../test/a5/deitarIf3p.pdf

##Compose
#Deitar IF 1S
fstcompose ../test/a5/deitarIf1s.fst lemma2verbif.fst > ../test/a5/out/deitarIf1sA5.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a5/out/deitarIf1sA5.fst | dot -Tpdf  > ../test/a5/out/deitarIf1sA5.pdf

#Deitar IF 3S
fstcompose ../test/a5/deitarIf2s.fst lemma2verbif.fst > ../test/a5/out/deitarIf2sA5.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a5/out/deitarIf2sA5.fst | dot -Tpdf  > ../test/a5/out/deitarIf2sA5.pdf

#Deitar IF 3S
fstcompose ../test/a5/deitarIf3s.fst lemma2verbif.fst > ../test/a5/out/deitarIf3sA5.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a5/out/deitarIf3sA5.fst | dot -Tpdf  > ../test/a5/out/deitarIf3sA5.pdf

#Deitar IF 1P
fstcompose ../test/a5/deitarIf1p.fst lemma2verbif.fst > ../test/a5/out/deitarIf1pA5.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a5/out/deitarIf1pA5.fst | dot -Tpdf  > ../test/a5/out/deitarIf1pA5.pdf

#Deitar IF 2P
fstcompose ../test/a5/deitarIf2p.fst lemma2verbif.fst > ../test/a5/out/deitarIf2pA5.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a5/out/deitarIf2pA5.fst | dot -Tpdf  > ../test/a5/out/deitarIf2pA5.pdf

#Deitar IF 3P
fstcompose ../test/a5/deitarIf3p.fst lemma2verbif.fst > ../test/a5/out/deitarIf3pA5.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a5/out/deitarIf3pA5.fst | dot -Tpdf  > ../test/a5/out/deitarIf3pA5.pdf


################### Testa os tradutores ################
#
# Compila e gera a versão gráfica do transdutor que traduz Inglês em Português
#fstcompose potato.fst trad.fst > batata.fst
#fstdraw --isymbols=letras.sym --osymbols=letras.sym --portrait batata.fst | dot -Tpdf > batata.pdf

#fstcompose cabbage.fst trad.fst > couve.fst
#fstdraw --isymbols=letras.sym --osymbols=letras.sym --portrait couve.fst | dot -Tpdf > couve.pdf

#fstcompose onion.fst trad.fst > cebola.fst
#fstdraw --isymbols=letras.sym --osymbols=letras.sym --portrait cebola.fst | dot -Tpdf > cebola.pdf


# Gera a versão textual das saídas
#fstproject --project_output batata.fst | fstrmepsilon | fsttopsort | fstprint --acceptor --isymbols=letras.sym
