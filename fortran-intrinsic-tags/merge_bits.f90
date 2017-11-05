! FORTRAN INTRINSIC PROCEDURE
!    merge_bits()
! 
! 
! DESCRIPTION
!    MERGE_BITS(I, J, MASK) merges the bits of I and J
!    as determined by the mask.  The i-th bit of the result is equal to the
!    i-th bit of I if the i-th bit of MASK is 1; it is equal to
!    the i-th bit of J otherwise.
! 
! 
! STANDARD
!    Fortran 2008 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function merge_bits(i, j, mask)

! 
! 
! ARGUMENTS
! 
!    I    Shall be of type INTEGER. 
!    J    Shall be of type INTEGER and of the same
!    kind as I. 
!    MASK Shall be of type INTEGER and of the same
!    kind as I.
! 
! 
! RETURN VALUE
!    The result is of the same type and kind as I.
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
