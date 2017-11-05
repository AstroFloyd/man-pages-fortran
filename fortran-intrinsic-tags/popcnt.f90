! FORTRAN INTRINSIC PROCEDURE
!    popcnt()
! 
! 
! DESCRIPTION
!    POPCNT(I) returns the number of bits set ('1' bits) in the binary
!    representation of I.
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

function popcnt(i)

! 
! 
! ARGUMENTS
! 
!    I Shall be of type INTEGER.
! 
! 
! RETURN VALUE
!    The return value is of type INTEGER and of the default integer
!    kind.
! 
! 
! SEE ALSO
!    POPPAR, LEADZ, TRAILZ
! 
! 
! EXAMPLE
! 
!              program test_population
!                print *, popcnt(127),       poppar(127)
!                print *, popcnt(huge(0_4)), poppar(huge(0_4))
!                print *, popcnt(huge(0_8)), poppar(huge(0_8))
!              end program test_population
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
