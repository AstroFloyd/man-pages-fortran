#!/bin/bash

##  html2man.sh: convert the GNU gfortran intrinsic-procedures html pages to man format
##  2016-03-27  AstroFloyd, for gcc-5.3.0
##  Copyright (c) 2016-2017 - AstroFloyd - http://astrofloyd.org


for infile in ABORT.html ABS.html ACCESS.html ACHAR.html ACOS.html ACOSH.html ADJUSTL.html ADJUSTR.html AIMAG.html AINT.html ALARM.html ALL.html ALLOCATED.html AND.html ANINT.html ANY.html ASIN.html ASINH.html ASSOCIATED.html ATAN.html ATAN2.html ATANH.html ATOMIC_005fADD.html ATOMIC_005fAND.html ATOMIC_005fCAS.html ATOMIC_005fDEFINE.html ATOMIC_005fFETCH_005fADD.html ATOMIC_005fFETCH_005fAND.html ATOMIC_005fFETCH_005fOR.html ATOMIC_005fFETCH_005fXOR.html ATOMIC_005fOR.html ATOMIC_005fREF.html ATOMIC_005fXOR.html BACKTRACE.html BESSEL_005fJ0.html BESSEL_005fJ1.html BESSEL_005fJN.html BESSEL_005fY0.html BESSEL_005fY1.html BESSEL_005fYN.html BGE.html BGT.html BIT_005fSIZE.html BLE.html BLT.html BTEST.html C_005fASSOCIATED.html C_005fF_005fPOINTER.html C_005fF_005fPROCPOINTER.html C_005fFUNLOC.html C_005fLOC.html C_005fSIZEOF.html CEILING.html CHAR.html CHDIR.html CHMOD.html CMPLX.html CO_005fBROADCAST.html CO_005fMAX.html CO_005fMIN.html CO_005fREDUCE.html CO_005fSUM.html COMMAND_005fARGUMENT_005fCOUNT.html COMPILER_005fOPTIONS.html COMPILER_005fVERSION.html COMPLEX.html CONJG.html COS.html COSH.html COUNT.html CPU_005fTIME.html CSHIFT.html CTIME.html DATE_005fAND_005fTIME.html DBLE.html DCMPLX.html DIGITS.html DIM.html DOT_005fPRODUCT.html DPROD.html DREAL.html DSHIFTL.html DSHIFTR.html DTIME.html EOSHIFT.html EPSILON.html ERF.html ERFC.html ERFC_005fSCALED.html ETIME.html EXECUTE_005fCOMMAND_005fLINE.html EXIT.html EXP.html EXPONENT.html EXTENDS_005fTYPE_005fOF.html FDATE.html FGET.html FGETC.html FLOOR.html FLUSH.html FNUM.html FPUT.html FPUTC.html FRACTION.html FREE.html FSEEK.html FSTAT.html FTELL.html GAMMA.html GERROR.html GETARG.html GET_005fCOMMAND.html GET_005fCOMMAND_005fARGUMENT.html GETCWD.html GETENV.html GET_005fENVIRONMENT_005fVARIABLE.html GETGID.html GETLOG.html GETPID.html GETUID.html GMTIME.html HOSTNM.html HUGE.html HYPOT.html IACHAR.html IALL.html IAND.html IANY.html IARGC.html IBCLR.html IBITS.html IBSET.html ICHAR.html IDATE.html IEOR.html IERRNO.html IMAGE_005fINDEX.html INDEX-intrinsic.html INT.html INT2.html INT8.html IOR.html IPARITY.html IRAND.html IS_005fIOSTAT_005fEND.html IS_005fIOSTAT_005fEOR.html ISATTY.html ISHFT.html ISHFTC.html ISNAN.html ITIME.html KILL.html KIND.html LBOUND.html LCOBOUND.html LEADZ.html LEN.html LEN_005fTRIM.html LGE.html LGT.html LINK.html LLE.html LLT.html LNBLNK.html LOC.html LOG.html LOG10.html LOG_005fGAMMA.html LOGICAL.html LONG.html LSHIFT.html LSTAT.html LTIME.html MALLOC.html MASKL.html MASKR.html MATMUL.html MAX.html MAXEXPONENT.html MAXLOC.html MAXVAL.html MCLOCK.html MCLOCK8.html MERGE.html MERGE_005fBITS.html MIN.html MINEXPONENT.html MINLOC.html MINVAL.html MOD.html MODULO.html MOVE_005fALLOC.html MVBITS.html NEAREST.html NEW_005fLINE.html NINT.html NORM2.html NOT.html NULL.html NUM_005fIMAGES.html OR.html PACK.html PARITY.html PERROR.html POPCNT.html POPPAR.html PRECISION.html PRESENT.html PRODUCT.html RADIX.html RAN.html RAND.html RANDOM_005fNUMBER.html RANDOM_005fSEED.html RANGE.html RANK.html REAL.html RENAME.html REPEAT.html RESHAPE.html RRSPACING.html RSHIFT.html SAME_005fTYPE_005fAS.html SCALE.html SCAN.html SECNDS.html SECOND.html SELECTED_005fCHAR_005fKIND.html SELECTED_005fINT_005fKIND.html SELECTED_005fREAL_005fKIND.html SET_005fEXPONENT.html SHAPE.html SHIFTA.html SHIFTL.html SHIFTR.html SIGN.html SIGNAL.html SIN.html SINH.html SIZE.html SIZEOF.html SLEEP.html SPACING.html SPREAD.html SQRT.html SRAND.html STAT.html STORAGE_005fSIZE.html SUM.html SYMLNK.html SYSTEM.html SYSTEM_005fCLOCK.html TAN.html TANH.html THIS_005fIMAGE.html TIME.html TIME8.html TINY.html TRAILZ.html TRANSFER.html TRANSPOSE.html TRIM.html TTYNAM.html UBOUND.html UCOBOUND.html UMASK.html UNLINK.html UNPACK.html VERIFY.html XOR.html
do
    outfile=`echo ${infile} | sed -e 's/\.html/\.3f/g'  -e 's/\(.*\)/\L\1/' -e 's/_005f/_/g'`
    
    echo "Converting  ${infile}  ->  ${outfile}"
    
    
    cat html/${infile} \
	| sed -e '/<meta /d' \
	      -e '/<link /d' \
	      -e '/<html /d' \
	      -e '/<head>/d' \
	      -e '/<\/head>/d' \
	      -e '/<title>/d' \
	      -e '/<style /d' \
	      -e '/<\/style>/d' \
	      -e '/<body>/d' \
	      -e '/ pre\./d' \
	      -e '/ span\./d' \
	      -e '/<a name=/d' \
	      -e '/<hr>/d' \
	      -e '/<!--/d' \
	      -e 's/-->//g' \
	      \
	      -e 's/\(Copyright (C) 1999-2015 Free Software Foundation, Inc.\)/\.\" \1/g' \
	      -e 's/\(Permission is granted to copy, distribute and\/or modify this document\)/.\" \1/g' \
	      -e 's/\(under the terms of the GNU Free Documentation License, Version 1.3 or\)/.\" \1/g' \
	      -e 's/\(any later version published by the Free Software Foundation; with the\)/.\" \1/g' \
	      -e 's/\(Invariant Sections being ``Funding Free Software\)/.\" \1/g' \
	      -e 's/\(Texts being (a) (see below), and with the Back-Cover Texts being (b)\)/.\" \1/g' \
	      -e 's/\((see below).  A copy of the license is included in the section entitled\)/.\" \1/g' \
	      -e 's/\(``GNU Free Documentation License''.\)/.\" \1/g' \
	      -e 's/\((a) The FSF\)/.\" \1/g' \
	      -e 's/\(     A GNU Manual\)/.\" \1/g' \
	      -e 's/\((b) The FSF\)/.\" \1/g' \
	      -e 's/\(     You have freedom to copy and modify this GNU Manual, like GNU\)/.\" \1/g' \
	      -e 's/\(     software.  Copies published by the Free Software Foundation raise\)/.\" \1/g' \
	      -e 's/\(     funds for GNU development.\)/.\" \1/g' \
	      \
	      -e '/<div class="node">/d' \
	      -e 's/^.*<p>/\.PP\n/g' \
	      -e '/Next:&nbsp;<a rel="next"/d' \
	      -e '/Previous:&nbsp;<a rel="previous"/d' \
	      -e '/Up:&nbsp;<a rel="up"/d' \
	      -e '/<\/div>/d' \
	      -e '/<ol type=1 start=1>/d' \
	      -e '/<\/ol>/d' \
	      \
	      -e 's/^.*<dt><em>\(.*\)<\/em>:<dd>/.SH \U\1\E\n/g' \
	      -e 's/<dt>/\n\\fB/g' \
	      -e 's/<dd>/\\fP /g' \
	      -e 's/<br>//g' \
	      -e 's/<dl>//g' \
	      -e 's/<\/dl>//g' \
	      -e '/<\/table>/d' \
	      -e 's/<pre class="smallexample">     //g' \
	      -e '/<\/pre>/d' \
	      \
	      -e 's/<h3 class="section">9.*<code>/\.TH "/g' \
	      -e 's/<\/code>.*<\/h3>/" "3f" "Sun Mar 27 2016" "Intrinsic Fortran procedures" "Intrinsic Fortran procedures"/g' \
	      -e 's/<em>/\\fI/g' \
	      -e 's/<\/em>/\\fP/g' \
	      -e 's/<code>/\\fI/g' \
	      -e 's/<\/code>/\\fP/g' \
	      -e 's/<var>/\\fI/g' \
	      -e 's/<\/var>/\\fP/g' \
	      -e 's/<acronym>/\\fI/g' \
	      -e 's/<\/acronym>/\\fP/g' \
	      -e 's/<li>/  *  /g' \
	      -e 's/&mdash;/\\-/g' \
	      -e 's/&ndash;/\\-/g' \
	      -e 's/<a href="[a-zA-Z0-9_]*\.html#[a-zA-Z0-9_]*">//g' \
	      -e 's/&amp;/\&/g' \
	      -e 's/<samp><span class="command">/\\fI/g' \
	      -e 's/<samp><span class="samp">/\\fI/g' \
	      -e 's/<\/span><\/samp>/\\fP/g' \
	      -e "s/&lsquo;/'/g" \
	      -e "s/&rsquo;/'/g" \
	      -e 's/&ldquo;/"/g' \
	      -e 's/&rdquo;/"/g' \
	      -e 's/&gt;/>/g' \
	      -e 's/&lt;/</g' \
	      \
	      -e 's/\\le/<=/g' \
	      -e 's/\\leq/<=/g' \
	      -e 's/\\Re/Re/g' \
	      -e 's/\\Im/Im/g' \
	      -e 's/\\cos/cos/g' \
	      -e 's/\\sin/sin/g' \
	      -e 's/\\tan/tan/g' \
	      -e 's/\\acos/acos/g' \
	      -e 's/\\asin/asin/g' \
	      -e 's/\\atan/atan/g' \
	      -e 's/\\pi/PI/g' \
	      \
	      -e 's/<table summary=""><tr align="left"><td valign="top" width="[0-9]*%">//g' \
	      -e 's/<table summary="">//g' \
	      -e 's/<tr align="left"><td valign="top" width="[0-9]*%">//g' \
	      -e 's/<\/td><\/tr><tr align="left"><td valign="top" width="[0-9]*%">/\n/g' \
	      -e 's/<\/td><td valign="top" width="[0-9]*%">//g' \
	      \
	      -e 's/^.*<\/body><\/html>/.SH AUTHOR\n.PP\nThis information was taken from the GFortran documentation (\\fBhttps:\/\/gcc.gnu.org\/onlinedocs\/gcc-5.3.0\/gfortran\/\\fP) and converted to a manpage by AstroFloyd (\\fBhttp:\/\/astrofloyd.org\\fP)./g' \
	      \
	      -e 's/<\/a>//g' \
	      -e 's/<\/td>//g' \
	      -e 's/<\/tr>//g' \
	      -e 's/ See also <a href="Fortran-2003-status.html#Fortran-2003-status">Fortran 2003 status.//g' \
	      -e 's/<a href="INDEX-intrinsic.html#INDEX-intrinsic">INDEX intrinsic/INDEX/g' \
	      > man3f/${outfile}
done

# Fix typo in gcc-5.3.0:
sed -i -e 's/\\fIRANDOM_NUMBER(HARVEST)\\fP/\\fICALL RANDOM_NUMBER(HARVEST)\\fP/g' man3f/random_number.3f


# The html page for INDEX() was not called index.html for obvious reasons:
mv -f man3f/index-intrinsic.3f man3f/index.3f

