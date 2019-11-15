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

#b6
fstunion lemma2verbip.fst lemma2verbis.fst > lemma2verb1.fst
fstunion lemma2verb1.fst lemma2verbif.fst > lemma2verb.fst

fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2verb.fst | dot -Tpdf  > lemma2verb.pdf

#b7
fstunion lemma2noun.fst lemma2adverb.fst > lemma2word1.fst
fstunion lemma2word1.fst lemma2verb.fst > lemma2word.fst

fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2word.fst | dot -Tpdf  > lemma2word.pdf

#c8
fstinvert lemma2word.fst > word2lemma.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait word2lemma.fst | dot -Tpdf  > word2lemma.pdf


################### Testes ################
#
#
###Test a1)
##Words
#Aluno FS
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a1/alunoFs.txt | fstarcsort > ../test/a1/alunoFs.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a1/alunoFs.fst | dot -Tpdf  > ../test/a1/alunoFs.pdf

#Aluno MS
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a1/alunoMs.txt | fstarcsort > ../test/a1/alunoMs.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a1/alunoMs.fst | dot -Tpdf  > ../test/a1/alunoMs.pdf

#Aluno MP
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a1/alunoMp.txt | fstarcsort > ../test/a1/alunoMp.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a1/alunoMp.fst | dot -Tpdf  > ../test/a1/alunoMp.pdf

#Aluno FP
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a1/alunoFp.txt | fstarcsort > ../test/a1/alunoFp.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a1/alunoFp.fst | dot -Tpdf  > ../test/a1/alunoFp.pdf


##Compose
#Aluno FS
fstcompose ../test/a1/alunoFs.fst lemma2noun.fst > ../test/a1/out/alunoFsA1.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a1/out/alunoFsA1.fst | dot -Tpdf  > ../test/a1/out/alunoFsA1.pdf

#Aluno MS
fstcompose ../test/a1/alunoMs.fst lemma2noun.fst > ../test/a1/out/alunoMsA1.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a1/out/alunoMsA1.fst | dot -Tpdf  > ../test/a1/out/alunoMsA1.pdf

#Aluno MP
fstcompose ../test/a1/alunoMp.fst lemma2noun.fst > ../test/a1/out/alunoMpA1.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a1/out/alunoMpA1.fst | dot -Tpdf  > ../test/a1/out/alunoMpA1.pdf

#Aluno FP
fstcompose ../test/a1/alunoFp.fst lemma2noun.fst > ../test/a1/out/alunoFpA1.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a1/out/alunoFpA1.fst | dot -Tpdf  > ../test/a1/out/alunoFpA1.pdf

###Test a2)
##Words
#incrivelmente ADV
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a2/incrivelmenteADV.txt | fstarcsort > ../test/a2/incrivelmenteADV.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a2/incrivelmenteADV.fst | dot -Tpdf  > ../test/a2/incrivelmenteADV.pdf

##Compose
#incrivelmente ADV
fstcompose ../test/a2/incrivelmenteADV.fst lemma2adverb.fst > ../test/a2/out/incrivelmenteADVA2.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a2/out/incrivelmenteADVA2.fst | dot -Tpdf  > ../test/a2/out/incrivelmenteADVA2.pdf

###Test a3)
##Words
#Deitar IP 1S
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a3/deitarIp1s.txt | fstarcsort > ../test/a3/deitarIp1s.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a3/deitarIp1s.fst | dot -Tpdf  > ../test/a3/deitarIp1s.pdf

#Deitar IP 2S
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a3/deitarIp2s.txt | fstarcsort > ../test/a3/deitarIp2s.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a3/deitarIp2s.fst | dot -Tpdf  > ../test/a3/deitarIp2s.pdf

#Deitar IP 3S
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a3/deitarIp3s.txt | fstarcsort > ../test/a3/deitarIp3s.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a3/deitarIp3s.fst | dot -Tpdf  > ../test/a3/deitarIp3s.pdf

#Deitar IP 1P
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a3/deitarIp1p.txt | fstarcsort > ../test/a3/deitarIp1p.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a3/deitarIp1p.fst | dot -Tpdf  > ../test/a3/deitarIp1p.pdf

#Deitar IP 2P
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a3/deitarIp2p.txt | fstarcsort > ../test/a3/deitarIp2p.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a3/deitarIp2p.fst | dot -Tpdf  > ../test/a3/deitarIp2p.pdf

#Deitar IP 3P
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/a3/deitarIp3p.txt | fstarcsort > ../test/a3/deitarIp3p.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a3/deitarIp3p.fst | dot -Tpdf  > ../test/a3/deitarIp3p.pdf

##Compose
#Deitar IP 1S
fstcompose ../test/a3/deitarIp1s.fst lemma2verbip.fst > ../test/a3/out/deitarIp1sA3.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a3/out/deitarIp1sA3.fst | dot -Tpdf  > ../test/a3/out/deitarIp1sA3.pdf

#Deitar IP 3S
fstcompose ../test/a3/deitarIp2s.fst lemma2verbip.fst > ../test/a3/out/deitarIp2sA3.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a3/out/deitarIp2sA3.fst | dot -Tpdf  > ../test/a3/out/deitarIp2sA3.pdf

#Deitar IP 3S
fstcompose ../test/a3/deitarIp3s.fst lemma2verbip.fst > ../test/a3/out/deitarIp3sA3.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a3/out/deitarIp3sA3.fst | dot -Tpdf  > ../test/a3/out/deitarIp3sA3.pdf

#Deitar IP 1P
fstcompose ../test/a3/deitarIp1p.fst lemma2verbip.fst > ../test/a3/out/deitarIp1pA3.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a3/out/deitarIp1pA3.fst | dot -Tpdf  > ../test/a3/out/deitarIp1pA3.pdf

#Deitar IP 2P
fstcompose ../test/a3/deitarIp2p.fst lemma2verbip.fst > ../test/a3/out/deitarIp2pA3.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a3/out/deitarIp2pA3.fst | dot -Tpdf  > ../test/a3/out/deitarIp2pA3.pdf

#Deitar IP 3P
fstcompose ../test/a3/deitarIp3p.fst lemma2verbip.fst > ../test/a3/out/deitarIp3pA3.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/a3/out/deitarIp3pA3.fst | dot -Tpdf  > ../test/a3/out/deitarIp3pA3.pdf



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

###Test b6)
##Compose

#Deitar IP 1S
fstcompose ../test/a3/deitarIp1s.fst lemma2verb.fst > ../test/b6/out/deitarIp1sb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIp1sb6.fst | dot -Tpdf  > ../test/b6/out/deitarIp1sb6.pdf

#Deitar IP 3S
fstcompose ../test/a3/deitarIp2s.fst lemma2verb.fst > ../test/b6/out/deitarIp2sb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIp2sb6.fst | dot -Tpdf  > ../test/b6/out/deitarIp2sb6.pdf

#Deitar IP 3S
fstcompose ../test/a3/deitarIp3s.fst lemma2verb.fst > ../test/b6/out/deitarIp3sb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIp3sb6.fst | dot -Tpdf  > ../test/b6/out/deitarIp3sb6.pdf

#Deitar IP 1P
fstcompose ../test/a3/deitarIp1p.fst lemma2verb.fst > ../test/b6/out/deitarIp1pb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIp1pb6.fst | dot -Tpdf  > ../test/b6/out/deitarIp1pb6.pdf

#Deitar IP 2P
fstcompose ../test/a3/deitarIp2p.fst lemma2verb.fst > ../test/b6/out/deitarIp2pb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIp2pb6.fst | dot -Tpdf  > ../test/b6/out/deitarIp2pb6.pdf

#Deitar IP 3P
fstcompose ../test/a3/deitarIp3p.fst lemma2verb.fst > ../test/b6/out/deitarIp3pb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIp3pb6.fst | dot -Tpdf  > ../test/b6/out/deitarIp3pb6.pdf


#Deitar IS 1S
fstcompose ../test/a4/deitarIs1s.fst lemma2verb.fst > ../test/b6/out/deitarIs1sb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIs1sb6.fst | dot -Tpdf  > ../test/b6/out/deitarIs1sb6.pdf

#Deitar IS 3S
fstcompose ../test/a4/deitarIs2s.fst lemma2verb.fst > ../test/b6/out/deitarIs2sb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIs2sb6.fst | dot -Tpdf  > ../test/b6/out/deitarIs2sb6.pdf

#Deitar IS 3S
fstcompose ../test/a4/deitarIs3s.fst lemma2verb.fst > ../test/b6/out/deitarIs3sb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIs3sb6.fst | dot -Tpdf  > ../test/b6/out/deitarIs3sb6.pdf

#Deitar IS 1P
fstcompose ../test/a4/deitarIs1p.fst lemma2verb.fst > ../test/b6/out/deitarIs1pb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIs1pb6.fst | dot -Tpdf  > ../test/b6/out/deitarIs1pb6.pdf

#Deitar IS 2P
fstcompose ../test/a4/deitarIs2p.fst lemma2verb.fst > ../test/b6/out/deitarIs2pb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIs2pb6.fst | dot -Tpdf  > ../test/b6/out/deitarIs2pb6.pdf

#Deitar IS 3P
fstcompose ../test/a4/deitarIs3p.fst lemma2verb.fst > ../test/b6/out/deitarIs3pb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIs3pb6.fst | dot -Tpdf  > ../test/b6/out/deitarIs3pb6.pdf

#Deitar IF 1S
fstcompose ../test/a5/deitarIf1s.fst lemma2verb.fst > ../test/b6/out/deitarIf1sb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIf1sb6.fst | dot -Tpdf  > ../test/b6/out/deitarIf1sb6.pdf

#Deitar IF 3S
fstcompose ../test/a5/deitarIf2s.fst lemma2verb.fst > ../test/b6/out/deitarIf2sb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIf2sb6.fst | dot -Tpdf  > ../test/b6/out/deitarIf2sb6.pdf

#Deitar IF 3S
fstcompose ../test/a5/deitarIf3s.fst lemma2verb.fst > ../test/b6/out/deitarIf3sb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIf3sb6.fst | dot -Tpdf  > ../test/b6/out/deitarIf3sb6.pdf

#Deitar IF 1P
fstcompose ../test/a5/deitarIf1p.fst lemma2verb.fst > ../test/b6/out/deitarIf1pb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIf1pb6.fst | dot -Tpdf  > ../test/b6/out/deitarIf1pb6.pdf

#Deitar IF 2P
fstcompose ../test/a5/deitarIf2p.fst lemma2verb.fst > ../test/b6/out/deitarIf2pb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIf2pb6.fst | dot -Tpdf  > ../test/b6/out/deitarIf2pb6.pdf

#Deitar IF 3P
fstcompose ../test/a5/deitarIf3p.fst lemma2verb.fst > ../test/b6/out/deitarIf3pb6.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b6/out/deitarIf3pb6.fst | dot -Tpdf  > ../test/b6/out/deitarIf3pb6.pdf

##Test b7)
##Compose

#Aluno FS
fstcompose ../test/a1/alunoFs.fst lemma2word.fst > ../test/b7/out/alunoFsb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/alunoFsb7.fst | dot -Tpdf  > ../test/b7/out/alunoFsb7.pdf

#Aluno MS
fstcompose ../test/a1/alunoMs.fst lemma2word.fst > ../test/b7/out/alunoMsb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/alunoMsb7.fst | dot -Tpdf  > ../test/b7/out/alunoMsb7.pdf

#Aluno MP
fstcompose ../test/a1/alunoMp.fst lemma2word.fst > ../test/b7/out/alunoMpb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/alunoMpb7.fst | dot -Tpdf  > ../test/b7/out/alunoMpb7.pdf

#Aluno FP
fstcompose ../test/a1/alunoFp.fst lemma2word.fst > ../test/b7/out/alunoFpb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/alunoFpb7.fst | dot -Tpdf  > ../test/b7/out/alunoFpb7.pdf

#Deitar IP 1S
fstcompose ../test/a3/deitarIp1s.fst lemma2word.fst > ../test/b7/out/deitarIp1sb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIp1sb7.fst | dot -Tpdf  > ../test/b7/out/deitarIp1sb7.pdf

#Deitar IP 2S
fstcompose ../test/a3/deitarIp2s.fst lemma2word.fst > ../test/b7/out/deitarIp2sb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIp2sb7.fst | dot -Tpdf  > ../test/b7/out/deitarIp2sb7.pdf

#Deitar IP 3S
fstcompose ../test/a3/deitarIp3s.fst lemma2word.fst > ../test/b7/out/deitarIp3sb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIp3sb7.fst | dot -Tpdf  > ../test/b7/out/deitarIp3sb7.pdf

#Deitar IP 1P
fstcompose ../test/a3/deitarIp1p.fst lemma2word.fst > ../test/b7/out/deitarIp1pb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIp1pb7.fst | dot -Tpdf  > ../test/b7/out/deitarIp1pb7.pdf

#Deitar IP 2P
fstcompose ../test/a3/deitarIp2p.fst lemma2word.fst > ../test/b7/out/deitarIp2pb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIp2pb7.fst | dot -Tpdf  > ../test/b7/out/deitarIp2pb7.pdf

#Deitar IP 3P
fstcompose ../test/a3/deitarIp3p.fst lemma2word.fst > ../test/b7/out/deitarIp3pb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIp3pb7.fst | dot -Tpdf  > ../test/b7/out/deitarIp3pb7.pdf

#Deitar IS 1S
fstcompose ../test/a4/deitarIs1s.fst lemma2word.fst > ../test/b7/out/deitarIs1sb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIs1sb7.fst | dot -Tpdf  > ../test/b7/out/deitarIs1sb7.pdf

#Deitar IS 3S
fstcompose ../test/a4/deitarIs2s.fst lemma2word.fst > ../test/b7/out/deitarIs2sb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIs2sb7.fst | dot -Tpdf  > ../test/b7/out/deitarIs2sb7.pdf

#Deitar IS 3S
fstcompose ../test/a4/deitarIs3s.fst lemma2word.fst > ../test/b7/out/deitarIs3sb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIs3sb7.fst | dot -Tpdf  > ../test/b7/out/deitarIs3sb7.pdf

#Deitar IS 1P
fstcompose ../test/a4/deitarIs1p.fst lemma2word.fst > ../test/b7/out/deitarIs1pb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIs1pb7.fst | dot -Tpdf  > ../test/b7/out/deitarIs1pb7.pdf

#Deitar IS 2P
fstcompose ../test/a4/deitarIs2p.fst lemma2word.fst > ../test/b7/out/deitarIs2pb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIs2pb7.fst | dot -Tpdf  > ../test/b7/out/deitarIs2pb7.pdf

#Deitar IS 3P
fstcompose ../test/a4/deitarIs3p.fst lemma2word.fst > ../test/b7/out/deitarIs3pb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIs3pb7.fst | dot -Tpdf  > ../test/b7/out/deitarIs3pb7.pdf

#Deitar IF 1S
fstcompose ../test/a5/deitarIf1s.fst lemma2word.fst > ../test/b7/out/deitarIf1sb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIf1sb7.fst | dot -Tpdf  > ../test/b7/out/deitarIf1sb7.pdf

#Deitar IF 3S
fstcompose ../test/a5/deitarIf2s.fst lemma2word.fst > ../test/b7/out/deitarIf2sb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIf2sb7.fst | dot -Tpdf  > ../test/b7/out/deitarIf2sb7.pdf

#Deitar IF 3S
fstcompose ../test/a5/deitarIf3s.fst lemma2word.fst > ../test/b7/out/deitarIf3sb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIf3sb7.fst | dot -Tpdf  > ../test/b7/out/deitarIf3sb7.pdf

#Deitar IF 1P
fstcompose ../test/a5/deitarIf1p.fst lemma2word.fst > ../test/b7/out/deitarIf1pb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIf1pb7.fst | dot -Tpdf  > ../test/b7/out/deitarIf1pb7.pdf

#Deitar IF 2P
fstcompose ../test/a5/deitarIf2p.fst lemma2word.fst > ../test/b7/out/deitarIf2pb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIf2pb7.fst | dot -Tpdf  > ../test/b7/out/deitarIf2pb7.pdf

#Deitar IF 3P
fstcompose ../test/a5/deitarIf3p.fst lemma2word.fst > ../test/b7/out/deitarIf3pb7.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/b7/out/deitarIf3pb7.fst | dot -Tpdf  > ../test/b7/out/deitarIf3pb7.pdf

##c8
#Words
#Aluno FP
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../test/c8/alunas.txt | fstarcsort > ../test/c8/alunas.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/c8/alunas.fst | dot -Tpdf  > ../test/c8/alunas.pdf


##Compose
#Aluno FS
fstcompose ../test/c8/alunas.fst word2lemma.fst > ../test/c8/out/alunasc8.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ../test/c8/out/alunasc8.fst | dot -Tpdf  > ../test/c8/out/alunasc8.pdf


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