#!/bin/bash

##  man2fit.sh: convert the GNU gfortran intrinsic-procedures man pages to Fortran-intrinsic-tags (fit) format
##  Run after html2man.sh
##  2017-11-05  AstroFloyd
##  Copyright (c) 2017 - AstroFloyd - http://astrofloyd.org


for infile in `ls man3f/*.3f`
do
    outfile=`echo ${infile} | sed -e 's/\.3f/\.f90/g'  -e 's/man3f\//fortran-intrinsic-tags\//g'  -e 's/\(.*\)/\L\1/' -e 's/_005f/_/g'`
    
    echo "Converting  ${infile}  ->  ${outfile}"
    
    cat ${infile} \
	| sed \
	      \
	      -e '/Copyright (C) 1999-2015 Free Software Foundation, Inc./d' \
	      -e '/Permission is granted to copy, distribute and\/or modify this document/d' \
	      -e '/under the terms of the GNU Free Documentation License, Version 1.3 or/d' \
	      -e '/any later version published by the Free Software Foundation; with the/d' \
	      -e '/Invariant Sections being ``Funding Free Software/d' \
	      -e '/Texts being (a) (see below), and with the Back-Cover Texts being (b)/d' \
	      -e '/(see below).  A copy of the license is included in the section entitled/d' \
	      -e '/``GNU Free Documentation License''./d' \
	      -e '/(a) The FSF/d' \
	      -e '/     A GNU Manual/d' \
	      -e '/(b) The FSF/d' \
	      -e '/     You have freedom to copy and modify this GNU Manual, like GNU/d' \
	      -e '/     software.  Copies published by the Free Software Foundation raise/d' \
	      -e '/     funds for GNU development./d' \
	      \
	      \
	      -e 's/^\(.*\)$/!    \1/' \
	      -e 's/^! *$/! /' \
	      \
	      -e 's/^!    .\"/!    /' \
	      \
	      -e 's/^!    \.TH \"\([A-Z0-9_]*\)\" .*$/! \n! FORTRAN INTRINSIC PROCEDURE\n!    \L\1()/g' \
	      \
	      -e '/^!    \.PP/d' \
	      \
	      -e 's/^!    \.SH SYNTAX/!    \.SH PROTOTYPE/' \
	      \
	      -e 's/^!    \.SH \(.*\)$/! \n! \1/' \
	      \
	      -e 's/!    \\fIRESULT = \([A-Z0-9_]*\)\((.*)\)/\nfunction \L\1\2\n/g' \
	      -e 's/!    \\fIPTR = \([A-Z0-9_]*\)\((.*)\)/\nfunction \L\1\2\n/g' \
	      \
	      -e 's/!    \\fICALL \([A-Z0-9_]*\)\((.*)\)/\nsubroutine \L\1\2\n/g' \
	      -e 's/!    \\fICALL \([A-Z0-9_]*\)/\nsubroutine \L\1\n/g' \
	      \
	      -e 's/\[, / \[, /g' \
	      \
	      -e 's/\\fI//g' \
	      -e 's/\\fB//g' \
	      -e 's/\\fP//g' \
	      \
	      > ${outfile}
    
    # GCC copyright was removed from top, add to bottom:
    cat >> ${outfile}  <<EOF
!      
! COPYRIGHT      
!      Copyright (C) 1999-2015 Free Software Foundation, Inc.
!      
!      Permission is granted to copy, distribute and/or modify this document
!      under the terms of the GNU Free Documentation License, Version 1.3 or
!      any later version published by the Free Software Foundation; with the
!      Invariant Sections being ``Funding Free Software
!      Texts being (a) (see below), and with the Back-Cover Texts being (b)
!      (see below).  A copy of the license is included in the section entitled
!      ``GNU Free Documentation License''.
!      
!      (a) The FSF
!      
!           A GNU Manual
!      
!      (b) The FSF
!      
!           You have freedom to copy and modify this GNU Manual, like GNU
!           software.  Copies published by the Free Software Foundation raise
!           funds for GNU development.
!      
EOF
    
    # Multi-line seds:
    sedml ${outfile} 's/\n\n\n/\n\n/g' > ${outfile}_tmp                          # Three blank lines around procedure prototype -> two
    sedml ${outfile}_tmp 's/\n! \n! \n! \n! \n! \n! \n! \n! //g' > ${outfile}    # Remove eight empty comment lines  (where GCC copyright used to be)
    sedml ${outfile} 's/\n! \n! \n! \n! /\n! \n! \n! /g' > ${outfile}_tmp        # Three empty comment lines -> two
    sedml ${outfile}_tmp 's/\n! PROTOTYPE\n! \n/\n! PROTOTYPE\n/g' > ${outfile}  # No empty comment line after PROTOTYPE line
    
    #mv -f ${outfile}_tmp ${outfile}  # Odd number of sedml calls
    rm -f ${outfile}_tmp             # Even number of sedml calls
    
done
