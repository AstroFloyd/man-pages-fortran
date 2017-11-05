! FORTRAN INTRINSIC PROCEDURE
!    dprod()
! 
! 
! DESCRIPTION
!    DPROD(X,Y) returns the product X*Y.
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

function dprod(x, y)

! 
! 
! ARGUMENTS
! 
!    X The type shall be REAL. 
!    Y The type shall be REAL.
! 
! 
! RETURN VALUE
!    The return value is of type REAL(8).
! 
! 
! EXAMPLE
! 
!              program test_dprod
!                  real :: x = 5.2
!                  real :: y = 2.3
!                  real(8) :: d
!                  d = dprod(x,y)
!                  print *, d
!              end program test_dprod
! 
! SPECIFIC NAMES
! 
!    Name              Argument               Return type       Standard
!    DPROD(X,Y) REAL(4) X, Y    REAL(8)    Fortran 77 and later
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
