! FORTRAN INTRINSIC PROCEDURE
!    scale()
! 
! 
! DESCRIPTION
!    SCALE(X,I) returns X * RADIX(X)**I.
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

function scale(x, i)

! 
! 
! ARGUMENTS
! 
!    X The type of the argument shall be a REAL. 
!    I The type of the argument shall be a INTEGER.
! 
! 
! RETURN VALUE
!    The return value is of the same type and kind as X. 
!    Its value is X * RADIX(X)**I.
! 
! 
! EXAMPLE
! 
!              program test_scale
!                real :: x = 178.1387e-4
!                integer :: i = 5
!                print *, scale(x,i), x*radix(x)**i
!              end program test_scale
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
