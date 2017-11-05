! FORTRAN INTRINSIC PROCEDURE
!    erfc()
! 
! 
! DESCRIPTION
!    ERFC(X) computes the complementary error function of X.
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

function erfc(x)

! 
! 
! ARGUMENTS
! 
!    X The type shall be REAL.
! 
! 
! RETURN VALUE
!    The return value is of type REAL and of the same kind as X. 
!    It lies in the range  0 <=q erfc (x) <=q 2 .
! 
! 
! EXAMPLE
! 
!              program test_erfc
!                real(8) :: x = 0.17_8
!                x = erfc(x)
!              end program test_erfc
! 
! SPECIFIC NAMES
! 
!    Name            Argument          Return type       Standard
!    DERFC(X) REAL(8) X  REAL(8)    GNU extension
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
