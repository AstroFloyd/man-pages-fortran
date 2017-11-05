! FORTRAN INTRINSIC PROCEDURE
!    log10()
! 
! 
! DESCRIPTION
!    LOG10(X) computes the base 10 logarithm of X.
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

function log10(x)

! 
! 
! ARGUMENTS
! 
!    X The type shall be REAL.
! 
! 
! RETURN VALUE
!    The return value is of type REAL or COMPLEX. 
!    The kind type parameter is the same as X.
! 
! 
! EXAMPLE
! 
!              program test_log10
!                real(8) :: x = 10.0_8
!                x = log10(x)
!              end program test_log10
! 
! SPECIFIC NAMES
! 
!    Name            Argument          Return type       Standard
!    ALOG10(X)  REAL(4) X  REAL(4)    Fortran 95 and later
!    DLOG10(X)  REAL(8) X  REAL(8)    Fortran 95 and later
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
