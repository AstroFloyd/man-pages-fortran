! FORTRAN INTRINSIC PROCEDURE
!    trailz()
! 
! 
! DESCRIPTION
!    TRAILZ returns the number of trailing zero bits of an integer.
! 
! 
! STANDARD
!    Fortran 2008 and later
! 
! 
! CLASS
!    Elemental function
! 
! 
! PROTOTYPE

function trailz(i)

! 
! 
! ARGUMENTS
! 
!    I Shall be of type INTEGER.
! 
! 
! RETURN VALUE
!    The type of the return value is the default INTEGER. 
!    If all the bits of I are zero, the result value is BIT_SIZE(I).
! 
! 
! EXAMPLE
! 
!              PROGRAM test_trailz
!                WRITE (*,*) TRAILZ(8)  ! prints 3
!              END PROGRAM
! 
! SEE ALSO
!    BIT_SIZE, LEADZ, POPPAR, POPCNT
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
