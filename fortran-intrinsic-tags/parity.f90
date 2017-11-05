! FORTRAN INTRINSIC PROCEDURE
!    parity()
! 
! 
! DESCRIPTION
!    Calculates the parity, i.e. the reduction using .XOR.,
!    of MASK along dimension DIM.
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

function parity(mask [, dim])

! 
! 
! ARGUMENTS
! 
!    LOGICAL Shall be an array of type LOGICAL
!    DIM   (Optional) shall be a scalar of type
!    INTEGER with a value in the range from 1 to n, where n
!    equals the rank of MASK.
! 
! 
! RETURN VALUE
!    The result is of the same type as MASK.
! 
!    If DIM is absent, a scalar with the parity of all elements in
!    MASK is returned, i.e. true if an odd number of elements is
!    .true. and false otherwise.  If DIM is present, an array
!    of rank n-1, where n equals the rank of ARRAY,
!    and a shape similar to that of MASK with dimension DIM
!    dropped is returned.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_sum
!                LOGICAL :: x(2) = [ .true., .false. ]
!                print *, PARITY(x) ! prints "T" (true).
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
