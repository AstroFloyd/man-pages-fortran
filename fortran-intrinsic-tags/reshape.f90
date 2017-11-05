! FORTRAN INTRINSIC PROCEDURE
!    reshape()
! 
! 
! DESCRIPTION
!    Reshapes SOURCE to correspond to SHAPE. If necessary,
!    the new array may be padded with elements from PAD or permuted
!    as defined by ORDER.
! 
! 
! STANDARD
!    Fortran 95 and later
! 
! 
! CLASS
!    Transformational function
! 
! 
! PROTOTYPE

function reshape(source, shape [, pad, order])

! 
! 
! ARGUMENTS
! 
!    SOURCE Shall be an array of any type. 
!    SHAPE  Shall be of type INTEGER and an
!    array of rank one. Its values must be positive or zero. 
!    PAD    (Optional) shall be an array of the same
!    type as SOURCE. 
!    ORDER  (Optional) shall be of type INTEGER
!    and an array of the same shape as SHAPE. Its values shall
!    be a permutation of the numbers from 1 to n, where n is the size of
!    SHAPE. If ORDER is absent, the natural ordering shall
!    be assumed.
! 
! 
! RETURN VALUE
!    The result is an array of shape SHAPE with the same type as
!    SOURCE.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_reshape
!                INTEGER, DIMENSION(4) :: x
!                WRITE(*,*) SHAPE(x)                       ! prints "4"
!                WRITE(*,*) SHAPE(RESHAPE(x, (/2, 2/)))    ! prints "2 2"
!              END PROGRAM
! 
! SEE ALSO
!    SHAPE
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
