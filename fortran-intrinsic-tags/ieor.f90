! FORTRAN INTRINSIC PROCEDURE
!    ieor()
! 
! 
! DESCRIPTION
!    IEOR returns the bitwise Boolean exclusive-OR of I and
!    J.
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function ieor(i, j)

! 
! 
! ARGUMENTS
! 
!    I The type shall be INTEGER. 
!    J The type shall be INTEGER, of the same
!    kind as I.  (As a GNU extension, different kinds are also
!    permitted.)
! 
! 
! RETURN VALUE
!    The return type is INTEGER, of the same kind as the
!    arguments.  (If the argument kinds differ, it is of the same kind as
!    the larger argument.)
! 
! 
! SEE ALSO
!    IOR, IAND, IBITS, IBSET, IBCLR, NOT
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
