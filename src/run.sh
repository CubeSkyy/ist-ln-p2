#!/bin/bash

################### TRANSDUCERS a)################
#
# 
fstcompile --isymbols=syms.txt --osymbols=syms.txt  lemma2noun.txt | fstarcsort > lemma2noun.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2noun.fst | dot -Tpdf  > lemma2noun.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt  lemma2verbis.txt | fstarcsort > lemma2verbis.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2verbis.fst | dot -Tpdf  > lemma2verbis.pdf


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

#Deitar IS 3S
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a4/deitarIs3s.txt | fstarcsort > ../test/a4/deitarIs3s.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/deitarIs3s.fst | dot -Tpdf  > ../test/a4/deitarIs3s.pdf

#Deitar IS 1P
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a4/deitarIs1p.txt | fstarcsort > ../test/a4/deitarIs1p.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/deitarIs1p.fst | dot -Tpdf  > ../test/a4/deitarIs1p.pdf

##Compose
#Deitar IS 1S
fstcompose ../test/a4/deitarIs1s.fst lemma2verbis.fst > ../test/a4/out/deitarIs1sA4.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/out/deitarIs1sA4.fst | dot -Tpdf  > ../test/a4/out/deitarIs1sA4.pdf

#Deitar IS 3S
fstcompose ../test/a4/deitarIs3s.fst lemma2verbis.fst > ../test/a4/out/deitarIs3sA4.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/out/deitarIs3sA4.fst | dot -Tpdf  > ../test/a4/out/deitarIs3sA4.pdf

#Deitar IS 1P
fstcompose ../test/a4/deitarIs1p.fst lemma2verbis.fst > ../test/a4/out/deitarIs1pA4.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a4/out/deitarIs1pA4.fst | dot -Tpdf  > ../test/a4/out/deitarIs1pA4.pdf

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