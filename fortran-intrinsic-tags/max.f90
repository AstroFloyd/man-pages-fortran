! FORTRAN INTRINSIC PROCEDURE
!    max()
! 
! 
! DESCRIPTION
!    Returns the argument with the largest (most positive) value.
! 
! 
! STANDARD
!    Fortran 77 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function max(a1, a2  [, a3  [, ...]])

! 
! 
! ARGUMENTS
! 
!    A1          The type shall be INTEGER or
!    REAL. 
!    A2, A3, ... An expression of the same type and kind
!    as A1.  (As a GNU extension, arguments of different kinds are
!    permitted.)
! 
! 
! RETURN VALUE
!    The return value corresponds to the maximum value among the arguments,
!    and has the same type and kind as the first argument.
! 
! 
! SPECIFIC NAMES
! 
!    Name             Argument             Return type         Standard
!    MAX0(A1)  INTEGER(4) A1 INTEGER(4)   Fortran 77 and later
!    AMAX0(A1) INTEGER(4) A1 REAL(MAX(X)) Fortran 77 and later
!    MAX1(A1)  REAL A1       INT(MAX(X))  Fortran 77 and later
!    AMAX1(A1) REAL(4) A1    REAL(4)      Fortran 77 and later
!    DMAX1(A1) REAL(8) A1    REAL(8)      Fortran 77 and later
! 
! 
! SEE ALSO
!    MAXLOC MAXVAL, MIN
! 
! 
! 
! AUTHOR
!    This information was taken from the GFortran documentation (https://gcc.gnu.org/onlinedocs/gcc-5.3.0/gfortran/) and converted to a manpage by AstroFloyd (http://astrofloyd.org).
! 
!      
! COPYRIGHT      
!      Copyright (C) 1999-2015 Free Software Foundation, Inc.
!      
!      Permission is granted to copy, distribute and/or modify this document
!      under the terms of the GNU Free Documentation License, Version 1.3 or
!      any later version published by the Free Software Foundation; with the
!      Invariant Sections being Funding Free Software
!      Texts being (a) (see below), and with the Back-Cover Texts being (b)
!      (see below).  A copy of the license is included in the section entitled
!      GNU Free Documentation License''.
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
