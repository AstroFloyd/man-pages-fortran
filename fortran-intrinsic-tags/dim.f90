! FORTRAN INTRINSIC PROCEDURE
!    dim()
! 
! 
! DESCRIPTION
!    DIM(X,Y) returns the difference X-Y if the result is positive;
!    otherwise returns zero.
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

function dim(x, y)

! 
! 
! ARGUMENTS
! 
!    X The type shall be INTEGER or REAL
!    Y The type shall be the same type and kind as X.
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER or REAL.
! 
! 
! EXAMPLE
! 
!              program test_dim
!                  integer :: i
!                  real(8) :: x
!                  i = dim(4, 15)
!                  x = dim(4.345_8, 2.111_8)
!                  print *, i
!                  print *, x
!              end program test_dim
! 
! SPECIFIC NAMES
! 
!    Name             Argument               Return type       Standard
!    DIM(X,Y)  REAL(4) X, Y    REAL(4)    Fortran 77 and later
!    IDIM(X,Y) INTEGER(4) X, Y INTEGER(4) Fortran 77 and later
!    DDIM(X,Y) REAL(8) X, Y    REAL(8)    Fortran 77 and later
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
