#!/bin/bash

##  man2f90.sh: convert the GNU gfortran intrinsic-procedures man pages to f90 format
##  Run after html2man.sh
##  2017-11-05  AstroFloyd
##  Copyright (c) 2017 - AstroFloyd - http://astrofloyd.org


for infile in `ls man3f/*.3f`
#for infile in `ls man3f/sum.3f man3f/exit.3f`
do
    outfile=`echo ${infile} | sed -e 's/\.3f/\.f90/g'  -e 's/man3f\//f90\//g'  -e 's/\(.*\)/\L\1/' -e 's/_005f/_/g'`
    
    echo "Converting  ${infile}  ->  ${outfile}"
    
    cat ${infile} \
	| sed \
	      -e 's/^\(.*\)$/!    \1/' \
	      -e 's/^! *$/! /' \
	      \
	      -e 's/^!    .\"/!    /' \
	      \
	      -e 's/^!    \.TH \"\([A-Z0-9_]*\)\" .*$/! \n! PROCEDURE:\n!    \L\1()/g' \
	      \
	      -e '/^!    \.PP/d' \
	      \
	      -e 's/^!    \.SH \(.*\)$/! \n! \1/' \
	      \
	      -e 's/!    \\fIRESULT = \([A-Z0-9_]*\)\((.*)\)/\nfunction \L\1\2\n/g' \
	      -e 's/!    \\fIPTR = \([A-Z0-9_]*\)\((.*)\)/\nfunction \L\1\2\n/g' \
	      \
	      -e 's/!    \\fICALL \([A-Z0-9_]*\)\((.*)\)/\nsubroutine \L\1\2\n/g' \
	      -e 's/!    \\fICALL \([A-Z0-9_]*\)/\nsubroutine \L\1\n/g' \
	      \
	      -e 's/\\fI//g' \
	      -e 's/\\fB//g' \
	      -e 's/\\fP//g' \
	      \
	      > ${outfile}
done


#	      -e 's/!    \\fIRESULT = \([A-Z0-9_]*\)\((.*)\)/\nfunction \L\1\2\nend function \1\n/g' \
#	      -e 's/!    \\fIPTR = \([A-Z0-9_]*\)\((.*)\)/\nfunction \L\1\2\nend function \1\n/g' \
#	      \
#	      -e 's/!    \\fICALL \([A-Z0-9_]*\)\((.*)\)/\nsubroutine \L\1\2\nend subroutine \1\n/g' \
#	      -e 's/!    \\fICALL \([A-Z0-9_]*\)/\nsubroutine \L\1\nend subroutine \1\n/g' \


# Multi-line seds:
sedml ${outfile} 's/\n\n\n/\n\n/g' > ${outfile}_tmp                      # Three blank lines around procedure prototype -> two
sedml ${outfile}_tmp 's/\n! \n! \n! \n! /\n! \n! \n! /g' > ${outfile}    # Three empty comment lines -> two
sedml ${outfile} 's/\n! SYNTAX\n! \n/\n! SYNTAX\n/g' > ${outfile}_tmp    # No empty comment line after SYNTAX line

mv -f ${outfile}_tmp ${outfile}  # Odd number of sedml call
#rm -f ${outfile}_tmp             # Even number of sedml call

