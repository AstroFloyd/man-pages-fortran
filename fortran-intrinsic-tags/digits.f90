! FORTRAN INTRINSIC PROCEDURE
!    digits()
! 
! 
! DESCRIPTION
!    DIGITS(X) returns the number of significant binary digits of the internal
!    model representation of X.  For example, on a system using a 32-bit
!    floating point representation, a default real number would likely return 24.
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

function digits(x)

! 
! 
! ARGUMENTS
! 
!    X The type may be INTEGER or REAL.
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER.
! 
! 
! EXAMPLE
! 
!              program test_digits
!                  integer :: i = 12345
!                  real :: x = 3.143
!                  real(8) :: y = 2.33
!                  print *, digits(i)
!                  print *, digits(x)
!                  print *, digits(y)
!              end program test_digits
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
