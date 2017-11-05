! FORTRAN INTRINSIC PROCEDURE
!    norm2()
! 
! 
! DESCRIPTION
!    Calculates the Euclidean vector norm (L_2 norm) of
!    of ARRAY along dimension DIM.
! 
! 
! STANDARD
!    Fortran 2008 and later
! 
! 
! CLASS
!    Transformational function
! 
! 
! PROTOTYPE

function norm2(array [, dim])

! 
! 
! ARGUMENTS
! 
!    ARRAY Shall be an array of type REAL
!    DIM   (Optional) shall be a scalar of type
!    INTEGER with a value in the range from 1 to n, where n
!    equals the rank of ARRAY.
! 
! 
! RETURN VALUE
!    The result is of the same type as ARRAY.
! 
!    If DIM is absent, a scalar with the square root of the sum of all
!    elements in ARRAY squared  is returned. Otherwise, an array of
!    rank n-1, where n equals the rank of ARRAY, and a
!    shape similar to that of ARRAY with dimension DIM dropped
!    is returned.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_sum
!                REAL :: x(5) = [ real :: 1, 2, 3, 4, 5 ]
!                print *, NORM2(x)  ! = sqrt(55.) ~ 7.416
!              END PROGRAM
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
