#!/bin/bash

FILES="test-vectors/vec_271_00_sv.dat
test-vectors/vec_271_01_sv.dat
test-vectors/vec_271_01_sv_short.dat
test-vectors/vec_271_02_sv.dat
test-vectors/vec_271_02_sv_short.dat
test-vectors/vec_271_03_sv_short.dat"

for f in $FILES
 do printf "\n\nProcessing file: %s\n" "$f"; 
 make run RUN="+testname=$f"
 printf "\n ******* Differences (if any) *******\n";
 diff verif_out.ppm ${f%.*}_ref.ppm;
 printf "\n ******* End of differences for $f *******\n";
done
