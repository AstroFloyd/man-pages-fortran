! FORTRAN INTRINSIC PROCEDURE
!    maxexponent()
! 
! 
! DESCRIPTION
!    MAXEXPONENT(X) returns the maximum exponent in the model of the
!    type of X.
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Inquiry function
! 
! 
! PROTOTYPE

function maxexponent(x)

! 
! 
! ARGUMENTS
! 
!    X Shall be of type REAL.
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER and of the default integer
!    kind.
! 
! 
! EXAMPLE
! 
!              program exponents
!                real(kind=4) :: x
!                real(kind=8) :: y
! 
!                print *, minexponent(x), maxexponent(x)
!                print *, minexponent(y), maxexponent(y)
!              end program exponents
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
