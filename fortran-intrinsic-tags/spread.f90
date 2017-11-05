! FORTRAN INTRINSIC PROCEDURE
!    spread()
! 
! 
! DESCRIPTION
!    Replicates a SOURCE array NCOPIES times along a specified
!    dimension DIM.
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

function spread(source, dim, ncopies)

! 
! 
! ARGUMENTS
! 
!    SOURCE  Shall be a scalar or an array of any type and
!    a rank less than seven. 
!    DIM     Shall be a scalar of type INTEGER with a
!    value in the range from 1 to n+1, where n equals the rank of SOURCE. 
!    NCOPIES Shall be a scalar of type INTEGER.
! 
! 
! RETURN VALUE
!    The result is an array of the same type as SOURCE and has rank n+1
!    where n equals the rank of SOURCE.
! 
! 
! EXAMPLE
! 
!              PROGRAM test_spread
!                INTEGER :: a = 1, b(2) = (/ 1, 2 /)
!                WRITE(*,*) SPREAD(A, 1, 2)            ! "1 1"
!                WRITE(*,*) SPREAD(B, 1, 2)            ! "1 1 2 2"
!              END PROGRAM
! 
! SEE ALSO
!    UNPACK
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
