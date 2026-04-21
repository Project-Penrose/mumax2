#! /bin/bash
# Copyright (c) Magnon Compute Corporation. All rights reserved.

rm -f examples.tex
for i in ../../examples/*.py; do
		f=$(basename $i)
		echo "\\subsection{$f}" >> examples.tex;
		echo "\\lstinputlisting[language=Python]{$i}" >> examples.tex;
done;
