! FORTRAN INTRINSIC PROCEDURE
!    mvbits()
! 
! 
! DESCRIPTION
!    Moves LEN bits from positions FROMPOS through
!    FROMPOS+LEN-1 of FROM to positions TOPOS through
!    TOPOS+LEN-1 of TO. The portion of argument TO not
!    affected by the movement of bits is unchanged. The values of
!    FROMPOS+LEN-1 and TOPOS+LEN-1 must be less than
!    BIT_SIZE(FROM).
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Elemental subroutine
! 
! 
! PROTOTYPE

subroutine mvbits(from, frompos, len, to, topos)

! 
! 
! ARGUMENTS
! 
!    FROM    The type shall be INTEGER. 
!    FROMPOS The type shall be INTEGER. 
!    LEN     The type shall be INTEGER. 
!    TO      The type shall be INTEGER, of the
!    same kind as FROM. 
!    TOPOS   The type shall be INTEGER.
! 
! 
! SEE ALSO
!    IBCLR, IBSET, IBITS, IAND, IOR, IEOR
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
