! FORTRAN INTRINSIC PROCEDURE
!    modulo()
! 
! 
! DESCRIPTION
!    MODULO(A,P) computes the A modulo P.
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

function modulo(a, p)

! 
! 
! ARGUMENTS
! 
!    A Shall be a scalar of type INTEGER or REAL. 
!    P Shall be a scalar of the same type and kind as A. 
!    It shall not be zero.
! 
! 
! RETURN VALUE
!    The type and kind of the result are those of the arguments.
! 
! 
!    If A and P are of type INTEGER: MODULO(A,P) has the value R such that A=Q*P+R, where
!    Q is an integer and R is between 0 (inclusive) and P
!    (exclusive). 
! 
!    If A and P are of type REAL: MODULO(A,P) has the value of A - FLOOR (A / P) * P. 
! 
!         The returned value has the same sign as P and a magnitude less than
!    the magnitude of P.
! 
! 
! EXAMPLE
! 
!              program test_modulo
!                print *, modulo(17,3)
!                print *, modulo(17.5,5.5)
! 
!                print *, modulo(-17,3)
!                print *, modulo(-17.5,5.5)
! 
!                print *, modulo(17,-3)
!                print *, modulo(17.5,-5.5)
!              end program
! 
! SEE ALSO
!    MOD
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
