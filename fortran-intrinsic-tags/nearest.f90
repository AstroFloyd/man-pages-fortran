! FORTRAN INTRINSIC PROCEDURE
!    nearest()
! 
! 
! DESCRIPTION
!    NEAREST(X, S) returns the processor-representable number nearest
!    to X in the direction indicated by the sign of S.
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

function nearest(x, s)

! 
! 
! ARGUMENTS
! 
!    X Shall be of type REAL. 
!    S Shall be of type REAL and
!    not equal to zero.
! 
! 
! RETURN VALUE
!    The return value is of the same type as X. If S is
!    positive, NEAREST returns the processor-representable number
!    greater than X and nearest to it. If S is negative,
!    NEAREST returns the processor-representable number smaller than
!    X and nearest to it.
! 
! 
! EXAMPLE
! 
!              program test_nearest
!                real :: x, y
!                x = nearest(42.0, 1.0)
!                y = nearest(42.0, -1.0)
!                write (*,"(3(G20.15))") x, y, x - y
!              end program test_nearest
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
