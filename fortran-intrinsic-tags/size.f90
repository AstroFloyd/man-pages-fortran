! FORTRAN INTRINSIC PROCEDURE
!    size()
! 
! 
! DESCRIPTION
!    Determine the extent of ARRAY along a specified dimension DIM,
!    or the total number of elements in ARRAY if DIM is absent.
! 
! 
! STANDARD
!    Fortran 95 and later, with KIND argument Fortran 2003 and later
! 
! 
! CLASS
!    Inquiry function
! 
! 
! PROTOTYPE

function size(array [, dim  [, kind]])

! 
! 
! ARGUMENTS
! 
!    ARRAY Shall be an array of any type. If ARRAY is
!    a pointer it must be associated and allocatable arrays must be allocated. 
!    DIM   (Optional) shall be a scalar of type INTEGER
!    and its value shall be in the range from 1 to n, where n equals the rank
!    of ARRAY. 
!    KIND (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER and of kind KIND. If
!    KIND is absent, the return value is of default integer kind.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_size
!                WRITE(*,*) SIZE((/ 1, 2 /))    ! 2
!              END PROGRAM
! 
! SEE ALSO
!    SHAPE, RESHAPE
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
