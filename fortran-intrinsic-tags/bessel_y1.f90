! FORTRAN INTRINSIC PROCEDURE
!    bessel_y1()
! 
! 
! DESCRIPTION
!    BESSEL_Y1(X) computes the Bessel function of the second kind of
!    order 1 of X. This function is available under the name
!    BESY1 as a GNU extension.
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

function bessel_y1(x)

! 
! 
! ARGUMENTS
! 
!    X The type shall be REAL.
! 
! 
! RETURN VALUE
!    The return value is of type REAL. It has the same kind as X.
! 
! 
! EXAMPLE
! 
!              program test_besy1
!                real(8) :: x = 1.0_8
!                x = bessel_y1(x)
!              end program test_besy1
! 
! SPECIFIC NAMES
! 
!    Name            Argument          Return type       Standard
!    DBESY1(X)REAL(8) X  REAL(8)    GNU extension
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
