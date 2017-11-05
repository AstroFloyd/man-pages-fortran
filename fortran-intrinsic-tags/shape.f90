! FORTRAN INTRINSIC PROCEDURE
!    shape()
! 
! 
! DESCRIPTION
!    Determines the shape of an array.
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

function shape(source  [, kind])

! 
! 
! ARGUMENTS
! 
!    SOURCE Shall be an array or scalar of any type. 
!    If SOURCE is a pointer it must be associated and allocatable
!    arrays must be allocated. 
!    KIND   (Optional) An INTEGER initialization
!    expression indicating the kind parameter of the result.
! 
! 
! RETURN VALUE
!    An INTEGER array of rank one with as many elements as SOURCE
!    has dimensions. The elements of the resulting array correspond to the extend
!    of SOURCE along the respective dimensions. If SOURCE is a scalar,
!    the result is the rank one array of size zero. If KIND is absent, the
!    return value has the default integer kind otherwise the specified kind.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_shape
!                INTEGER, DIMENSION(-1:1, -1:2) :: A
!                WRITE(*,*) SHAPE(A)             ! (/ 3, 4 /)
!                WRITE(*,*) SIZE(SHAPE(42))      ! (/ /)
!              END PROGRAM
! 
! SEE ALSO
!    RESHAPE, SIZE
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
